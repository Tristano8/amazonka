{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AmplifyBackend.Types.UpdateBackendAuthForgotPasswordConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AmplifyBackend.Types.UpdateBackendAuthForgotPasswordConfig where

import Amazonka.AmplifyBackend.Types.DeliveryMethod
import Amazonka.AmplifyBackend.Types.EmailSettings
import Amazonka.AmplifyBackend.Types.SmsSettings
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the forgot password policy for authenticating into the Amplify
-- app.
--
-- /See:/ 'newUpdateBackendAuthForgotPasswordConfig' smart constructor.
data UpdateBackendAuthForgotPasswordConfig = UpdateBackendAuthForgotPasswordConfig'
  { -- | The configuration for the email sent when an app user forgets their
    -- password.
    emailSettings :: Prelude.Maybe EmailSettings,
    -- | The configuration for the SMS message sent when an Amplify app user
    -- forgets their password.
    smsSettings :: Prelude.Maybe SmsSettings,
    -- | Describes which mode to use (either SMS or email) to deliver messages to
    -- app users that want to recover their password.
    deliveryMethod :: Prelude.Maybe DeliveryMethod
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendAuthForgotPasswordConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'emailSettings', 'updateBackendAuthForgotPasswordConfig_emailSettings' - The configuration for the email sent when an app user forgets their
-- password.
--
-- 'smsSettings', 'updateBackendAuthForgotPasswordConfig_smsSettings' - The configuration for the SMS message sent when an Amplify app user
-- forgets their password.
--
-- 'deliveryMethod', 'updateBackendAuthForgotPasswordConfig_deliveryMethod' - Describes which mode to use (either SMS or email) to deliver messages to
-- app users that want to recover their password.
newUpdateBackendAuthForgotPasswordConfig ::
  UpdateBackendAuthForgotPasswordConfig
newUpdateBackendAuthForgotPasswordConfig =
  UpdateBackendAuthForgotPasswordConfig'
    { emailSettings =
        Prelude.Nothing,
      smsSettings = Prelude.Nothing,
      deliveryMethod = Prelude.Nothing
    }

-- | The configuration for the email sent when an app user forgets their
-- password.
updateBackendAuthForgotPasswordConfig_emailSettings :: Lens.Lens' UpdateBackendAuthForgotPasswordConfig (Prelude.Maybe EmailSettings)
updateBackendAuthForgotPasswordConfig_emailSettings = Lens.lens (\UpdateBackendAuthForgotPasswordConfig' {emailSettings} -> emailSettings) (\s@UpdateBackendAuthForgotPasswordConfig' {} a -> s {emailSettings = a} :: UpdateBackendAuthForgotPasswordConfig)

-- | The configuration for the SMS message sent when an Amplify app user
-- forgets their password.
updateBackendAuthForgotPasswordConfig_smsSettings :: Lens.Lens' UpdateBackendAuthForgotPasswordConfig (Prelude.Maybe SmsSettings)
updateBackendAuthForgotPasswordConfig_smsSettings = Lens.lens (\UpdateBackendAuthForgotPasswordConfig' {smsSettings} -> smsSettings) (\s@UpdateBackendAuthForgotPasswordConfig' {} a -> s {smsSettings = a} :: UpdateBackendAuthForgotPasswordConfig)

-- | Describes which mode to use (either SMS or email) to deliver messages to
-- app users that want to recover their password.
updateBackendAuthForgotPasswordConfig_deliveryMethod :: Lens.Lens' UpdateBackendAuthForgotPasswordConfig (Prelude.Maybe DeliveryMethod)
updateBackendAuthForgotPasswordConfig_deliveryMethod = Lens.lens (\UpdateBackendAuthForgotPasswordConfig' {deliveryMethod} -> deliveryMethod) (\s@UpdateBackendAuthForgotPasswordConfig' {} a -> s {deliveryMethod = a} :: UpdateBackendAuthForgotPasswordConfig)

instance
  Prelude.Hashable
    UpdateBackendAuthForgotPasswordConfig
  where
  hashWithSalt
    _salt
    UpdateBackendAuthForgotPasswordConfig' {..} =
      _salt `Prelude.hashWithSalt` emailSettings
        `Prelude.hashWithSalt` smsSettings
        `Prelude.hashWithSalt` deliveryMethod

instance
  Prelude.NFData
    UpdateBackendAuthForgotPasswordConfig
  where
  rnf UpdateBackendAuthForgotPasswordConfig' {..} =
    Prelude.rnf emailSettings
      `Prelude.seq` Prelude.rnf smsSettings
      `Prelude.seq` Prelude.rnf deliveryMethod

instance
  Core.ToJSON
    UpdateBackendAuthForgotPasswordConfig
  where
  toJSON UpdateBackendAuthForgotPasswordConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("emailSettings" Core..=) Prelude.<$> emailSettings,
            ("smsSettings" Core..=) Prelude.<$> smsSettings,
            ("deliveryMethod" Core..=)
              Prelude.<$> deliveryMethod
          ]
      )
