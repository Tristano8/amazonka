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
-- Module      : Amazonka.LicenseManager.Types.IssuerDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LicenseManager.Types.IssuerDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details associated with the issuer of a license.
--
-- /See:/ 'newIssuerDetails' smart constructor.
data IssuerDetails = IssuerDetails'
  { -- | Issuer key fingerprint.
    keyFingerprint :: Prelude.Maybe Prelude.Text,
    -- | Asymmetric KMS key from Key Management Service. The KMS key must have a
    -- key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing
    -- algorithm.
    signKey :: Prelude.Maybe Prelude.Text,
    -- | Issuer name.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IssuerDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyFingerprint', 'issuerDetails_keyFingerprint' - Issuer key fingerprint.
--
-- 'signKey', 'issuerDetails_signKey' - Asymmetric KMS key from Key Management Service. The KMS key must have a
-- key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing
-- algorithm.
--
-- 'name', 'issuerDetails_name' - Issuer name.
newIssuerDetails ::
  IssuerDetails
newIssuerDetails =
  IssuerDetails'
    { keyFingerprint = Prelude.Nothing,
      signKey = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | Issuer key fingerprint.
issuerDetails_keyFingerprint :: Lens.Lens' IssuerDetails (Prelude.Maybe Prelude.Text)
issuerDetails_keyFingerprint = Lens.lens (\IssuerDetails' {keyFingerprint} -> keyFingerprint) (\s@IssuerDetails' {} a -> s {keyFingerprint = a} :: IssuerDetails)

-- | Asymmetric KMS key from Key Management Service. The KMS key must have a
-- key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing
-- algorithm.
issuerDetails_signKey :: Lens.Lens' IssuerDetails (Prelude.Maybe Prelude.Text)
issuerDetails_signKey = Lens.lens (\IssuerDetails' {signKey} -> signKey) (\s@IssuerDetails' {} a -> s {signKey = a} :: IssuerDetails)

-- | Issuer name.
issuerDetails_name :: Lens.Lens' IssuerDetails (Prelude.Maybe Prelude.Text)
issuerDetails_name = Lens.lens (\IssuerDetails' {name} -> name) (\s@IssuerDetails' {} a -> s {name = a} :: IssuerDetails)

instance Core.FromJSON IssuerDetails where
  parseJSON =
    Core.withObject
      "IssuerDetails"
      ( \x ->
          IssuerDetails'
            Prelude.<$> (x Core..:? "KeyFingerprint")
            Prelude.<*> (x Core..:? "SignKey")
            Prelude.<*> (x Core..:? "Name")
      )

instance Prelude.Hashable IssuerDetails where
  hashWithSalt salt' IssuerDetails' {..} =
    salt' `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` signKey
      `Prelude.hashWithSalt` keyFingerprint

instance Prelude.NFData IssuerDetails where
  rnf IssuerDetails' {..} =
    Prelude.rnf keyFingerprint
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf signKey
