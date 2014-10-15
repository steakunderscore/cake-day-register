class OAuthService
  def self.find_or_create_baker(auth, signed_in_resource = nil)
    # Get the identity and baker if they exist
    identity = find_or_create_identity(auth)

    # If a signed_in_resource is provided it always overrides the existing baker
    # to prevent the identity being locked with accidentally created accounts.
    # Note that this may leave zombie accounts (with no associated identity) which
    # can be cleaned up at a later date.
    baker = signed_in_resource ? signed_in_resource : identity.baker

    # Create the baker if needed
    if baker.nil?

      # Get the existing baker by email if the provider gives us a verified email.
      # If no verified email was provided we assign a temporary email and ask the
      # baker to verify it on the next step via BakersController.finish_signup

      # email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      # email = auth.info.email if email_is_verified
      email = auth.info.email
      email ||= "#{Baker::TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com"
      baker = Baker.where(:email => email).first if email

      # Create the baker if it's a new registration
      if baker.nil?
        baker = Baker.new(
          name: auth.extra.raw_info.name,
          #bakername: auth.info.nickname || auth.uid,
          email: email,
          password: Devise.friendly_token[0,20]
        )
        baker.save!
      end
    end

    # Associate the identity with the baker if needed
    if identity.baker != baker
      identity.baker = baker
      identity.save!
    end
    baker
  end

  def self.find_or_create_identity(auth)
    identity = Identity.find_by(provider: auth.provider, uid: auth.uid)
    identity = Identity.create(uid: auth.uid, provider: auth.provider) if identity.nil?
    identity
  end
end
