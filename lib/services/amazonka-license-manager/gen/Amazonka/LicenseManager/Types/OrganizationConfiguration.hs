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
-- Module      : Amazonka.LicenseManager.Types.OrganizationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LicenseManager.Types.OrganizationConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for Organizations.
--
-- /See:/ 'newOrganizationConfiguration' smart constructor.
data OrganizationConfiguration = OrganizationConfiguration'
  { -- | Enables Organizations integration.
    enableIntegration :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableIntegration', 'organizationConfiguration_enableIntegration' - Enables Organizations integration.
newOrganizationConfiguration ::
  -- | 'enableIntegration'
  Prelude.Bool ->
  OrganizationConfiguration
newOrganizationConfiguration pEnableIntegration_ =
  OrganizationConfiguration'
    { enableIntegration =
        pEnableIntegration_
    }

-- | Enables Organizations integration.
organizationConfiguration_enableIntegration :: Lens.Lens' OrganizationConfiguration Prelude.Bool
organizationConfiguration_enableIntegration = Lens.lens (\OrganizationConfiguration' {enableIntegration} -> enableIntegration) (\s@OrganizationConfiguration' {} a -> s {enableIntegration = a} :: OrganizationConfiguration)

instance Core.FromJSON OrganizationConfiguration where
  parseJSON =
    Core.withObject
      "OrganizationConfiguration"
      ( \x ->
          OrganizationConfiguration'
            Prelude.<$> (x Core..: "EnableIntegration")
      )

instance Prelude.Hashable OrganizationConfiguration where
  hashWithSalt salt' OrganizationConfiguration' {..} =
    salt' `Prelude.hashWithSalt` enableIntegration

instance Prelude.NFData OrganizationConfiguration where
  rnf OrganizationConfiguration' {..} =
    Prelude.rnf enableIntegration

instance Core.ToJSON OrganizationConfiguration where
  toJSON OrganizationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EnableIntegration" Core..= enableIntegration)
          ]
      )
