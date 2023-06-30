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
-- Module      : Amazonka.SSOAdmin.Types.AccountAssignmentOperationStatusMetadata
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSOAdmin.Types.AccountAssignmentOperationStatusMetadata where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSOAdmin.Types.StatusValues

-- | Provides information about the AccountAssignment creation request.
--
-- /See:/ 'newAccountAssignmentOperationStatusMetadata' smart constructor.
data AccountAssignmentOperationStatusMetadata = AccountAssignmentOperationStatusMetadata'
  { -- | The date that the permission set was created.
    createdDate :: Prelude.Maybe Data.POSIX,
    -- | The identifier for tracking the request operation that is generated by
    -- the universally unique identifier (UUID) workflow.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The status of the permission set provisioning process.
    status :: Prelude.Maybe StatusValues
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountAssignmentOperationStatusMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdDate', 'accountAssignmentOperationStatusMetadata_createdDate' - The date that the permission set was created.
--
-- 'requestId', 'accountAssignmentOperationStatusMetadata_requestId' - The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
--
-- 'status', 'accountAssignmentOperationStatusMetadata_status' - The status of the permission set provisioning process.
newAccountAssignmentOperationStatusMetadata ::
  AccountAssignmentOperationStatusMetadata
newAccountAssignmentOperationStatusMetadata =
  AccountAssignmentOperationStatusMetadata'
    { createdDate =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      status = Prelude.Nothing
    }

-- | The date that the permission set was created.
accountAssignmentOperationStatusMetadata_createdDate :: Lens.Lens' AccountAssignmentOperationStatusMetadata (Prelude.Maybe Prelude.UTCTime)
accountAssignmentOperationStatusMetadata_createdDate = Lens.lens (\AccountAssignmentOperationStatusMetadata' {createdDate} -> createdDate) (\s@AccountAssignmentOperationStatusMetadata' {} a -> s {createdDate = a} :: AccountAssignmentOperationStatusMetadata) Prelude.. Lens.mapping Data._Time

-- | The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
accountAssignmentOperationStatusMetadata_requestId :: Lens.Lens' AccountAssignmentOperationStatusMetadata (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatusMetadata_requestId = Lens.lens (\AccountAssignmentOperationStatusMetadata' {requestId} -> requestId) (\s@AccountAssignmentOperationStatusMetadata' {} a -> s {requestId = a} :: AccountAssignmentOperationStatusMetadata)

-- | The status of the permission set provisioning process.
accountAssignmentOperationStatusMetadata_status :: Lens.Lens' AccountAssignmentOperationStatusMetadata (Prelude.Maybe StatusValues)
accountAssignmentOperationStatusMetadata_status = Lens.lens (\AccountAssignmentOperationStatusMetadata' {status} -> status) (\s@AccountAssignmentOperationStatusMetadata' {} a -> s {status = a} :: AccountAssignmentOperationStatusMetadata)

instance
  Data.FromJSON
    AccountAssignmentOperationStatusMetadata
  where
  parseJSON =
    Data.withObject
      "AccountAssignmentOperationStatusMetadata"
      ( \x ->
          AccountAssignmentOperationStatusMetadata'
            Prelude.<$> (x Data..:? "CreatedDate")
            Prelude.<*> (x Data..:? "RequestId")
            Prelude.<*> (x Data..:? "Status")
      )

instance
  Prelude.Hashable
    AccountAssignmentOperationStatusMetadata
  where
  hashWithSalt
    _salt
    AccountAssignmentOperationStatusMetadata' {..} =
      _salt
        `Prelude.hashWithSalt` createdDate
        `Prelude.hashWithSalt` requestId
        `Prelude.hashWithSalt` status

instance
  Prelude.NFData
    AccountAssignmentOperationStatusMetadata
  where
  rnf AccountAssignmentOperationStatusMetadata' {..} =
    Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status
