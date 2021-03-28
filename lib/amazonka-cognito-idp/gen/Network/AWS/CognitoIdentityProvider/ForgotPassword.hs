{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.ForgotPassword
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the @Username@ parameter, you can use the username or user alias. The method used to send the confirmation code is sent according to the specified AccountRecoverySetting. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html Recovering User Accounts> in the /Amazon Cognito Developer Guide/ . If neither a verified phone number nor a verified email exists, an @InvalidParameterException@ is thrown. To use the confirmation code for resetting the password, call <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html ConfirmForgotPassword> .
module Network.AWS.CognitoIdentityProvider.ForgotPassword
    (
    -- * Creating a request
      ForgotPassword (..)
    , mkForgotPassword
    -- ** Request lenses
    , fpClientId
    , fpUsername
    , fpAnalyticsMetadata
    , fpClientMetadata
    , fpSecretHash
    , fpUserContextData

    -- * Destructuring the response
    , ForgotPasswordResponse (..)
    , mkForgotPasswordResponse
    -- ** Response lenses
    , fprrsCodeDeliveryDetails
    , fprrsResponseStatus
    ) where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to reset a user's password.
--
-- /See:/ 'mkForgotPassword' smart constructor.
data ForgotPassword = ForgotPassword'
  { clientId :: Types.ClientIdType
    -- ^ The ID of the client associated with the user pool.
  , username :: Types.UsernameType
    -- ^ The user name of the user for whom you want to enter a code to reset a forgotten password.
  , analyticsMetadata :: Core.Maybe Types.AnalyticsMetadataType
    -- ^ The Amazon Pinpoint analytics metadata for collecting metrics for @ForgotPassword@ calls.
  , clientMetadata :: Core.Maybe (Core.HashMap Types.StringType Types.StringType)
    -- ^ A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers. 
--
-- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , and /user migration/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your ForgotPassword request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
-- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
  , secretHash :: Core.Maybe Types.SecretHashType
    -- ^ A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  , userContextData :: Core.Maybe Types.UserContextDataType
    -- ^ Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ForgotPassword' value with any optional fields omitted.
mkForgotPassword
    :: Types.ClientIdType -- ^ 'clientId'
    -> Types.UsernameType -- ^ 'username'
    -> ForgotPassword
mkForgotPassword clientId username
  = ForgotPassword'{clientId, username,
                    analyticsMetadata = Core.Nothing, clientMetadata = Core.Nothing,
                    secretHash = Core.Nothing, userContextData = Core.Nothing}

-- | The ID of the client associated with the user pool.
--
-- /Note:/ Consider using 'clientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpClientId :: Lens.Lens' ForgotPassword Types.ClientIdType
fpClientId = Lens.field @"clientId"
{-# INLINEABLE fpClientId #-}
{-# DEPRECATED clientId "Use generic-lens or generic-optics with 'clientId' instead"  #-}

-- | The user name of the user for whom you want to enter a code to reset a forgotten password.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpUsername :: Lens.Lens' ForgotPassword Types.UsernameType
fpUsername = Lens.field @"username"
{-# INLINEABLE fpUsername #-}
{-# DEPRECATED username "Use generic-lens or generic-optics with 'username' instead"  #-}

-- | The Amazon Pinpoint analytics metadata for collecting metrics for @ForgotPassword@ calls.
--
-- /Note:/ Consider using 'analyticsMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpAnalyticsMetadata :: Lens.Lens' ForgotPassword (Core.Maybe Types.AnalyticsMetadataType)
fpAnalyticsMetadata = Lens.field @"analyticsMetadata"
{-# INLINEABLE fpAnalyticsMetadata #-}
{-# DEPRECATED analyticsMetadata "Use generic-lens or generic-optics with 'analyticsMetadata' instead"  #-}

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers. 
--
-- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , and /user migration/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your ForgotPassword request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
-- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- /Note:/ Consider using 'clientMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpClientMetadata :: Lens.Lens' ForgotPassword (Core.Maybe (Core.HashMap Types.StringType Types.StringType))
fpClientMetadata = Lens.field @"clientMetadata"
{-# INLINEABLE fpClientMetadata #-}
{-# DEPRECATED clientMetadata "Use generic-lens or generic-optics with 'clientMetadata' instead"  #-}

-- | A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
--
-- /Note:/ Consider using 'secretHash' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpSecretHash :: Lens.Lens' ForgotPassword (Core.Maybe Types.SecretHashType)
fpSecretHash = Lens.field @"secretHash"
{-# INLINEABLE fpSecretHash #-}
{-# DEPRECATED secretHash "Use generic-lens or generic-optics with 'secretHash' instead"  #-}

-- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
--
-- /Note:/ Consider using 'userContextData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fpUserContextData :: Lens.Lens' ForgotPassword (Core.Maybe Types.UserContextDataType)
fpUserContextData = Lens.field @"userContextData"
{-# INLINEABLE fpUserContextData #-}
{-# DEPRECATED userContextData "Use generic-lens or generic-optics with 'userContextData' instead"  #-}

instance Core.ToQuery ForgotPassword where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ForgotPassword where
        toHeaders ForgotPassword{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSCognitoIdentityProviderService.ForgotPassword")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ForgotPassword where
        toJSON ForgotPassword{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("ClientId" Core..= clientId),
                  Core.Just ("Username" Core..= username),
                  ("AnalyticsMetadata" Core..=) Core.<$> analyticsMetadata,
                  ("ClientMetadata" Core..=) Core.<$> clientMetadata,
                  ("SecretHash" Core..=) Core.<$> secretHash,
                  ("UserContextData" Core..=) Core.<$> userContextData])

instance Core.AWSRequest ForgotPassword where
        type Rs ForgotPassword = ForgotPasswordResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ForgotPasswordResponse' Core.<$>
                   (x Core..:? "CodeDeliveryDetails") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Respresents the response from the server regarding the request to reset a password.
--
-- /See:/ 'mkForgotPasswordResponse' smart constructor.
data ForgotPasswordResponse = ForgotPasswordResponse'
  { codeDeliveryDetails :: Core.Maybe Types.CodeDeliveryDetailsType
    -- ^ The code delivery details returned by the server in response to the request to reset a password.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ForgotPasswordResponse' value with any optional fields omitted.
mkForgotPasswordResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ForgotPasswordResponse
mkForgotPasswordResponse responseStatus
  = ForgotPasswordResponse'{codeDeliveryDetails = Core.Nothing,
                            responseStatus}

-- | The code delivery details returned by the server in response to the request to reset a password.
--
-- /Note:/ Consider using 'codeDeliveryDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fprrsCodeDeliveryDetails :: Lens.Lens' ForgotPasswordResponse (Core.Maybe Types.CodeDeliveryDetailsType)
fprrsCodeDeliveryDetails = Lens.field @"codeDeliveryDetails"
{-# INLINEABLE fprrsCodeDeliveryDetails #-}
{-# DEPRECATED codeDeliveryDetails "Use generic-lens or generic-optics with 'codeDeliveryDetails' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fprrsResponseStatus :: Lens.Lens' ForgotPasswordResponse Core.Int
fprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE fprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
