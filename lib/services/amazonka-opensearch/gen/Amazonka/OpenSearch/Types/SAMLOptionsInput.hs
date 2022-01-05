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
-- Module      : Amazonka.OpenSearch.Types.SAMLOptionsInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.SAMLOptionsInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.SAMLIdp
import qualified Amazonka.Prelude as Prelude

-- | The SAML application configuration for the domain.
--
-- /See:/ 'newSAMLOptionsInput' smart constructor.
data SAMLOptionsInput = SAMLOptionsInput'
  { -- | The SAML master username, which is stored in the Amazon OpenSearch
    -- Service domain\'s internal database.
    masterUserName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | True if SAML is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The SAML Identity Provider\'s information.
    idp :: Prelude.Maybe SAMLIdp,
    -- | Element of the SAML assertion to use for backend roles. Default is
    -- roles.
    rolesKey :: Prelude.Maybe Prelude.Text,
    -- | The backend role that the SAML master user is mapped to.
    masterBackendRole :: Prelude.Maybe Prelude.Text,
    -- | The duration, in minutes, after which a user session becomes inactive.
    -- Acceptable values are between 1 and 1440, and the default value is 60.
    sessionTimeoutMinutes :: Prelude.Maybe Prelude.Int,
    -- | Element of the SAML assertion to use for username. Default is NameID.
    subjectKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SAMLOptionsInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'masterUserName', 'sAMLOptionsInput_masterUserName' - The SAML master username, which is stored in the Amazon OpenSearch
-- Service domain\'s internal database.
--
-- 'enabled', 'sAMLOptionsInput_enabled' - True if SAML is enabled.
--
-- 'idp', 'sAMLOptionsInput_idp' - The SAML Identity Provider\'s information.
--
-- 'rolesKey', 'sAMLOptionsInput_rolesKey' - Element of the SAML assertion to use for backend roles. Default is
-- roles.
--
-- 'masterBackendRole', 'sAMLOptionsInput_masterBackendRole' - The backend role that the SAML master user is mapped to.
--
-- 'sessionTimeoutMinutes', 'sAMLOptionsInput_sessionTimeoutMinutes' - The duration, in minutes, after which a user session becomes inactive.
-- Acceptable values are between 1 and 1440, and the default value is 60.
--
-- 'subjectKey', 'sAMLOptionsInput_subjectKey' - Element of the SAML assertion to use for username. Default is NameID.
newSAMLOptionsInput ::
  SAMLOptionsInput
newSAMLOptionsInput =
  SAMLOptionsInput'
    { masterUserName = Prelude.Nothing,
      enabled = Prelude.Nothing,
      idp = Prelude.Nothing,
      rolesKey = Prelude.Nothing,
      masterBackendRole = Prelude.Nothing,
      sessionTimeoutMinutes = Prelude.Nothing,
      subjectKey = Prelude.Nothing
    }

-- | The SAML master username, which is stored in the Amazon OpenSearch
-- Service domain\'s internal database.
sAMLOptionsInput_masterUserName :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Text)
sAMLOptionsInput_masterUserName = Lens.lens (\SAMLOptionsInput' {masterUserName} -> masterUserName) (\s@SAMLOptionsInput' {} a -> s {masterUserName = a} :: SAMLOptionsInput) Prelude.. Lens.mapping Core._Sensitive

-- | True if SAML is enabled.
sAMLOptionsInput_enabled :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Bool)
sAMLOptionsInput_enabled = Lens.lens (\SAMLOptionsInput' {enabled} -> enabled) (\s@SAMLOptionsInput' {} a -> s {enabled = a} :: SAMLOptionsInput)

-- | The SAML Identity Provider\'s information.
sAMLOptionsInput_idp :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe SAMLIdp)
sAMLOptionsInput_idp = Lens.lens (\SAMLOptionsInput' {idp} -> idp) (\s@SAMLOptionsInput' {} a -> s {idp = a} :: SAMLOptionsInput)

-- | Element of the SAML assertion to use for backend roles. Default is
-- roles.
sAMLOptionsInput_rolesKey :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Text)
sAMLOptionsInput_rolesKey = Lens.lens (\SAMLOptionsInput' {rolesKey} -> rolesKey) (\s@SAMLOptionsInput' {} a -> s {rolesKey = a} :: SAMLOptionsInput)

-- | The backend role that the SAML master user is mapped to.
sAMLOptionsInput_masterBackendRole :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Text)
sAMLOptionsInput_masterBackendRole = Lens.lens (\SAMLOptionsInput' {masterBackendRole} -> masterBackendRole) (\s@SAMLOptionsInput' {} a -> s {masterBackendRole = a} :: SAMLOptionsInput)

-- | The duration, in minutes, after which a user session becomes inactive.
-- Acceptable values are between 1 and 1440, and the default value is 60.
sAMLOptionsInput_sessionTimeoutMinutes :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Int)
sAMLOptionsInput_sessionTimeoutMinutes = Lens.lens (\SAMLOptionsInput' {sessionTimeoutMinutes} -> sessionTimeoutMinutes) (\s@SAMLOptionsInput' {} a -> s {sessionTimeoutMinutes = a} :: SAMLOptionsInput)

-- | Element of the SAML assertion to use for username. Default is NameID.
sAMLOptionsInput_subjectKey :: Lens.Lens' SAMLOptionsInput (Prelude.Maybe Prelude.Text)
sAMLOptionsInput_subjectKey = Lens.lens (\SAMLOptionsInput' {subjectKey} -> subjectKey) (\s@SAMLOptionsInput' {} a -> s {subjectKey = a} :: SAMLOptionsInput)

instance Prelude.Hashable SAMLOptionsInput where
  hashWithSalt _salt SAMLOptionsInput' {..} =
    _salt `Prelude.hashWithSalt` masterUserName
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` idp
      `Prelude.hashWithSalt` rolesKey
      `Prelude.hashWithSalt` masterBackendRole
      `Prelude.hashWithSalt` sessionTimeoutMinutes
      `Prelude.hashWithSalt` subjectKey

instance Prelude.NFData SAMLOptionsInput where
  rnf SAMLOptionsInput' {..} =
    Prelude.rnf masterUserName
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf idp
      `Prelude.seq` Prelude.rnf rolesKey
      `Prelude.seq` Prelude.rnf masterBackendRole
      `Prelude.seq` Prelude.rnf sessionTimeoutMinutes
      `Prelude.seq` Prelude.rnf subjectKey

instance Core.ToJSON SAMLOptionsInput where
  toJSON SAMLOptionsInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MasterUserName" Core..=)
              Prelude.<$> masterUserName,
            ("Enabled" Core..=) Prelude.<$> enabled,
            ("Idp" Core..=) Prelude.<$> idp,
            ("RolesKey" Core..=) Prelude.<$> rolesKey,
            ("MasterBackendRole" Core..=)
              Prelude.<$> masterBackendRole,
            ("SessionTimeoutMinutes" Core..=)
              Prelude.<$> sessionTimeoutMinutes,
            ("SubjectKey" Core..=) Prelude.<$> subjectKey
          ]
      )
