{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.UpdateServiceSetting
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- @ServiceSetting@ is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature.
--
-- Services map a @SettingId@ object to a setting value. AWS services teams define the default value for a @SettingId@ . You can't create a new @SettingId@ , but you can overwrite the default value if you have the @ssm:UpdateServiceSetting@ permission for the setting. Use the 'GetServiceSetting' API action to view the current value. Or, use the 'ResetServiceSetting' to change the value back to the original value defined by the AWS service team.
-- Update the service setting for the account. 
module Network.AWS.SSM.UpdateServiceSetting
    (
    -- * Creating a request
      UpdateServiceSetting (..)
    , mkUpdateServiceSetting
    -- ** Request lenses
    , ussSettingId
    , ussSettingValue

    -- * Destructuring the response
    , UpdateServiceSettingResponse (..)
    , mkUpdateServiceSettingResponse
    -- ** Response lenses
    , ussrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | The request body of the UpdateServiceSetting API action.
--
-- /See:/ 'mkUpdateServiceSetting' smart constructor.
data UpdateServiceSetting = UpdateServiceSetting'
  { settingId :: Types.SettingId
    -- ^ The Amazon Resource Name (ARN) of the service setting to reset. For example, @arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled@ . The setting ID can be one of the following.
--
--
--     * @/ssm/parameter-store/default-parameter-tier@ 
--
--
--     * @/ssm/parameter-store/high-throughput-enabled@ 
--
--
--     * @/ssm/managed-instance/activation-tier@ 
--
--
  , settingValue :: Types.SettingValue
    -- ^ The new value to specify for the service setting. For the @/ssm/parameter-store/default-parameter-tier@ setting ID, the setting value can be one of the following.
--
--
--     * Standard
--
--
--     * Advanced
--
--
--     * Intelligent-Tiering
--
--
-- For the @/ssm/parameter-store/high-throughput-enabled@ , and @/ssm/managed-instance/activation-tier@ setting IDs, the setting value can be true or false.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateServiceSetting' value with any optional fields omitted.
mkUpdateServiceSetting
    :: Types.SettingId -- ^ 'settingId'
    -> Types.SettingValue -- ^ 'settingValue'
    -> UpdateServiceSetting
mkUpdateServiceSetting settingId settingValue
  = UpdateServiceSetting'{settingId, settingValue}

-- | The Amazon Resource Name (ARN) of the service setting to reset. For example, @arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled@ . The setting ID can be one of the following.
--
--
--     * @/ssm/parameter-store/default-parameter-tier@ 
--
--
--     * @/ssm/parameter-store/high-throughput-enabled@ 
--
--
--     * @/ssm/managed-instance/activation-tier@ 
--
--
--
-- /Note:/ Consider using 'settingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussSettingId :: Lens.Lens' UpdateServiceSetting Types.SettingId
ussSettingId = Lens.field @"settingId"
{-# INLINEABLE ussSettingId #-}
{-# DEPRECATED settingId "Use generic-lens or generic-optics with 'settingId' instead"  #-}

-- | The new value to specify for the service setting. For the @/ssm/parameter-store/default-parameter-tier@ setting ID, the setting value can be one of the following.
--
--
--     * Standard
--
--
--     * Advanced
--
--
--     * Intelligent-Tiering
--
--
-- For the @/ssm/parameter-store/high-throughput-enabled@ , and @/ssm/managed-instance/activation-tier@ setting IDs, the setting value can be true or false.
--
-- /Note:/ Consider using 'settingValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussSettingValue :: Lens.Lens' UpdateServiceSetting Types.SettingValue
ussSettingValue = Lens.field @"settingValue"
{-# INLINEABLE ussSettingValue #-}
{-# DEPRECATED settingValue "Use generic-lens or generic-optics with 'settingValue' instead"  #-}

instance Core.ToQuery UpdateServiceSetting where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateServiceSetting where
        toHeaders UpdateServiceSetting{..}
          = Core.pure ("X-Amz-Target", "AmazonSSM.UpdateServiceSetting")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateServiceSetting where
        toJSON UpdateServiceSetting{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("SettingId" Core..= settingId),
                  Core.Just ("SettingValue" Core..= settingValue)])

instance Core.AWSRequest UpdateServiceSetting where
        type Rs UpdateServiceSetting = UpdateServiceSettingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateServiceSettingResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | The result body of the UpdateServiceSetting API action.
--
-- /See:/ 'mkUpdateServiceSettingResponse' smart constructor.
newtype UpdateServiceSettingResponse = UpdateServiceSettingResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateServiceSettingResponse' value with any optional fields omitted.
mkUpdateServiceSettingResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateServiceSettingResponse
mkUpdateServiceSettingResponse responseStatus
  = UpdateServiceSettingResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ussrrsResponseStatus :: Lens.Lens' UpdateServiceSettingResponse Core.Int
ussrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ussrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
