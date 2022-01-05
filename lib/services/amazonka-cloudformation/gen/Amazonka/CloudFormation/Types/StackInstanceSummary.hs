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
-- Module      : Amazonka.CloudFormation.Types.StackInstanceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.StackInstanceSummary where

import Amazonka.CloudFormation.Types.StackDriftStatus
import Amazonka.CloudFormation.Types.StackInstanceComprehensiveStatus
import Amazonka.CloudFormation.Types.StackInstanceStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The structure that contains summary information about a stack instance.
--
-- /See:/ 'newStackInstanceSummary' smart constructor.
data StackInstanceSummary = StackInstanceSummary'
  { -- | The status of the stack instance, in terms of its synchronization with
    -- its associated stack set.
    --
    -- -   @INOPERABLE@: A @DeleteStackInstances@ operation has failed and left
    --     the stack in an unstable state. Stacks in this state are excluded
    --     from further @UpdateStackSet@ operations. You might need to perform
    --     a @DeleteStackInstances@ operation, with @RetainStacks@ set to
    --     @true@, to delete the stack instance, and then delete the stack
    --     manually.
    --
    -- -   @OUTDATED@: The stack isn\'t currently up to date with the stack set
    --     because:
    --
    --     -   The associated stack failed during a @CreateStackSet@ or
    --         @UpdateStackSet@ operation.
    --
    --     -   The stack was part of a @CreateStackSet@ or @UpdateStackSet@
    --         operation that failed or was stopped before the stack was
    --         created or updated.
    --
    -- -   @CURRENT@: The stack is currently up to date with the stack set.
    status :: Prelude.Maybe StackInstanceStatus,
    -- | Most recent time when CloudFormation performed a drift detection
    -- operation on the stack instance. This value will be @NULL@ for any stack
    -- instance on which drift detection has not yet been performed.
    lastDriftCheckTimestamp :: Prelude.Maybe Core.ISO8601,
    -- | [Self-managed permissions] The name of the Amazon Web Services account
    -- that the stack instance is associated with.
    account :: Prelude.Maybe Prelude.Text,
    -- | Status of the stack instance\'s actual configuration compared to the
    -- expected template and parameter configuration of the stack set to which
    -- it belongs.
    --
    -- -   @DRIFTED@: The stack differs from the expected template and
    --     parameter configuration of the stack set to which it belongs. A
    --     stack instance is considered to have drifted if one or more of the
    --     resources in the associated stack have drifted.
    --
    -- -   @NOT_CHECKED@: CloudFormation has not checked if the stack instance
    --     differs from its expected stack set configuration.
    --
    -- -   @IN_SYNC@: The stack instance\'s actual configuration matches its
    --     expected stack set configuration.
    --
    -- -   @UNKNOWN@: This value is reserved for future use.
    driftStatus :: Prelude.Maybe StackDriftStatus,
    -- | [Service-managed permissions] The organization root ID or organizational
    -- unit (OU) IDs that you specified for
    -- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
    organizationalUnitId :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon Web Services Region that the stack instance is
    -- associated with.
    region :: Prelude.Maybe Prelude.Text,
    -- | The explanation for the specific status code assigned to this stack
    -- instance.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The ID of the stack instance.
    stackId :: Prelude.Maybe Prelude.Text,
    -- | The detailed status of the stack instance.
    stackInstanceStatus :: Prelude.Maybe StackInstanceComprehensiveStatus,
    -- | The name or unique ID of the stack set that the stack instance is
    -- associated with.
    stackSetId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StackInstanceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'stackInstanceSummary_status' - The status of the stack instance, in terms of its synchronization with
-- its associated stack set.
--
-- -   @INOPERABLE@: A @DeleteStackInstances@ operation has failed and left
--     the stack in an unstable state. Stacks in this state are excluded
--     from further @UpdateStackSet@ operations. You might need to perform
--     a @DeleteStackInstances@ operation, with @RetainStacks@ set to
--     @true@, to delete the stack instance, and then delete the stack
--     manually.
--
-- -   @OUTDATED@: The stack isn\'t currently up to date with the stack set
--     because:
--
--     -   The associated stack failed during a @CreateStackSet@ or
--         @UpdateStackSet@ operation.
--
--     -   The stack was part of a @CreateStackSet@ or @UpdateStackSet@
--         operation that failed or was stopped before the stack was
--         created or updated.
--
-- -   @CURRENT@: The stack is currently up to date with the stack set.
--
-- 'lastDriftCheckTimestamp', 'stackInstanceSummary_lastDriftCheckTimestamp' - Most recent time when CloudFormation performed a drift detection
-- operation on the stack instance. This value will be @NULL@ for any stack
-- instance on which drift detection has not yet been performed.
--
-- 'account', 'stackInstanceSummary_account' - [Self-managed permissions] The name of the Amazon Web Services account
-- that the stack instance is associated with.
--
-- 'driftStatus', 'stackInstanceSummary_driftStatus' - Status of the stack instance\'s actual configuration compared to the
-- expected template and parameter configuration of the stack set to which
-- it belongs.
--
-- -   @DRIFTED@: The stack differs from the expected template and
--     parameter configuration of the stack set to which it belongs. A
--     stack instance is considered to have drifted if one or more of the
--     resources in the associated stack have drifted.
--
-- -   @NOT_CHECKED@: CloudFormation has not checked if the stack instance
--     differs from its expected stack set configuration.
--
-- -   @IN_SYNC@: The stack instance\'s actual configuration matches its
--     expected stack set configuration.
--
-- -   @UNKNOWN@: This value is reserved for future use.
--
-- 'organizationalUnitId', 'stackInstanceSummary_organizationalUnitId' - [Service-managed permissions] The organization root ID or organizational
-- unit (OU) IDs that you specified for
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
--
-- 'region', 'stackInstanceSummary_region' - The name of the Amazon Web Services Region that the stack instance is
-- associated with.
--
-- 'statusReason', 'stackInstanceSummary_statusReason' - The explanation for the specific status code assigned to this stack
-- instance.
--
-- 'stackId', 'stackInstanceSummary_stackId' - The ID of the stack instance.
--
-- 'stackInstanceStatus', 'stackInstanceSummary_stackInstanceStatus' - The detailed status of the stack instance.
--
-- 'stackSetId', 'stackInstanceSummary_stackSetId' - The name or unique ID of the stack set that the stack instance is
-- associated with.
newStackInstanceSummary ::
  StackInstanceSummary
newStackInstanceSummary =
  StackInstanceSummary'
    { status = Prelude.Nothing,
      lastDriftCheckTimestamp = Prelude.Nothing,
      account = Prelude.Nothing,
      driftStatus = Prelude.Nothing,
      organizationalUnitId = Prelude.Nothing,
      region = Prelude.Nothing,
      statusReason = Prelude.Nothing,
      stackId = Prelude.Nothing,
      stackInstanceStatus = Prelude.Nothing,
      stackSetId = Prelude.Nothing
    }

-- | The status of the stack instance, in terms of its synchronization with
-- its associated stack set.
--
-- -   @INOPERABLE@: A @DeleteStackInstances@ operation has failed and left
--     the stack in an unstable state. Stacks in this state are excluded
--     from further @UpdateStackSet@ operations. You might need to perform
--     a @DeleteStackInstances@ operation, with @RetainStacks@ set to
--     @true@, to delete the stack instance, and then delete the stack
--     manually.
--
-- -   @OUTDATED@: The stack isn\'t currently up to date with the stack set
--     because:
--
--     -   The associated stack failed during a @CreateStackSet@ or
--         @UpdateStackSet@ operation.
--
--     -   The stack was part of a @CreateStackSet@ or @UpdateStackSet@
--         operation that failed or was stopped before the stack was
--         created or updated.
--
-- -   @CURRENT@: The stack is currently up to date with the stack set.
stackInstanceSummary_status :: Lens.Lens' StackInstanceSummary (Prelude.Maybe StackInstanceStatus)
stackInstanceSummary_status = Lens.lens (\StackInstanceSummary' {status} -> status) (\s@StackInstanceSummary' {} a -> s {status = a} :: StackInstanceSummary)

-- | Most recent time when CloudFormation performed a drift detection
-- operation on the stack instance. This value will be @NULL@ for any stack
-- instance on which drift detection has not yet been performed.
stackInstanceSummary_lastDriftCheckTimestamp :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.UTCTime)
stackInstanceSummary_lastDriftCheckTimestamp = Lens.lens (\StackInstanceSummary' {lastDriftCheckTimestamp} -> lastDriftCheckTimestamp) (\s@StackInstanceSummary' {} a -> s {lastDriftCheckTimestamp = a} :: StackInstanceSummary) Prelude.. Lens.mapping Core._Time

-- | [Self-managed permissions] The name of the Amazon Web Services account
-- that the stack instance is associated with.
stackInstanceSummary_account :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_account = Lens.lens (\StackInstanceSummary' {account} -> account) (\s@StackInstanceSummary' {} a -> s {account = a} :: StackInstanceSummary)

-- | Status of the stack instance\'s actual configuration compared to the
-- expected template and parameter configuration of the stack set to which
-- it belongs.
--
-- -   @DRIFTED@: The stack differs from the expected template and
--     parameter configuration of the stack set to which it belongs. A
--     stack instance is considered to have drifted if one or more of the
--     resources in the associated stack have drifted.
--
-- -   @NOT_CHECKED@: CloudFormation has not checked if the stack instance
--     differs from its expected stack set configuration.
--
-- -   @IN_SYNC@: The stack instance\'s actual configuration matches its
--     expected stack set configuration.
--
-- -   @UNKNOWN@: This value is reserved for future use.
stackInstanceSummary_driftStatus :: Lens.Lens' StackInstanceSummary (Prelude.Maybe StackDriftStatus)
stackInstanceSummary_driftStatus = Lens.lens (\StackInstanceSummary' {driftStatus} -> driftStatus) (\s@StackInstanceSummary' {} a -> s {driftStatus = a} :: StackInstanceSummary)

-- | [Service-managed permissions] The organization root ID or organizational
-- unit (OU) IDs that you specified for
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
stackInstanceSummary_organizationalUnitId :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_organizationalUnitId = Lens.lens (\StackInstanceSummary' {organizationalUnitId} -> organizationalUnitId) (\s@StackInstanceSummary' {} a -> s {organizationalUnitId = a} :: StackInstanceSummary)

-- | The name of the Amazon Web Services Region that the stack instance is
-- associated with.
stackInstanceSummary_region :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_region = Lens.lens (\StackInstanceSummary' {region} -> region) (\s@StackInstanceSummary' {} a -> s {region = a} :: StackInstanceSummary)

-- | The explanation for the specific status code assigned to this stack
-- instance.
stackInstanceSummary_statusReason :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_statusReason = Lens.lens (\StackInstanceSummary' {statusReason} -> statusReason) (\s@StackInstanceSummary' {} a -> s {statusReason = a} :: StackInstanceSummary)

-- | The ID of the stack instance.
stackInstanceSummary_stackId :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_stackId = Lens.lens (\StackInstanceSummary' {stackId} -> stackId) (\s@StackInstanceSummary' {} a -> s {stackId = a} :: StackInstanceSummary)

-- | The detailed status of the stack instance.
stackInstanceSummary_stackInstanceStatus :: Lens.Lens' StackInstanceSummary (Prelude.Maybe StackInstanceComprehensiveStatus)
stackInstanceSummary_stackInstanceStatus = Lens.lens (\StackInstanceSummary' {stackInstanceStatus} -> stackInstanceStatus) (\s@StackInstanceSummary' {} a -> s {stackInstanceStatus = a} :: StackInstanceSummary)

-- | The name or unique ID of the stack set that the stack instance is
-- associated with.
stackInstanceSummary_stackSetId :: Lens.Lens' StackInstanceSummary (Prelude.Maybe Prelude.Text)
stackInstanceSummary_stackSetId = Lens.lens (\StackInstanceSummary' {stackSetId} -> stackSetId) (\s@StackInstanceSummary' {} a -> s {stackSetId = a} :: StackInstanceSummary)

instance Core.FromXML StackInstanceSummary where
  parseXML x =
    StackInstanceSummary'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "LastDriftCheckTimestamp")
      Prelude.<*> (x Core..@? "Account")
      Prelude.<*> (x Core..@? "DriftStatus")
      Prelude.<*> (x Core..@? "OrganizationalUnitId")
      Prelude.<*> (x Core..@? "Region")
      Prelude.<*> (x Core..@? "StatusReason")
      Prelude.<*> (x Core..@? "StackId")
      Prelude.<*> (x Core..@? "StackInstanceStatus")
      Prelude.<*> (x Core..@? "StackSetId")

instance Prelude.Hashable StackInstanceSummary where
  hashWithSalt _salt StackInstanceSummary' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` lastDriftCheckTimestamp
      `Prelude.hashWithSalt` account
      `Prelude.hashWithSalt` driftStatus
      `Prelude.hashWithSalt` organizationalUnitId
      `Prelude.hashWithSalt` region
      `Prelude.hashWithSalt` statusReason
      `Prelude.hashWithSalt` stackId
      `Prelude.hashWithSalt` stackInstanceStatus
      `Prelude.hashWithSalt` stackSetId

instance Prelude.NFData StackInstanceSummary where
  rnf StackInstanceSummary' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf lastDriftCheckTimestamp
      `Prelude.seq` Prelude.rnf account
      `Prelude.seq` Prelude.rnf driftStatus
      `Prelude.seq` Prelude.rnf organizationalUnitId
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf stackId
      `Prelude.seq` Prelude.rnf stackInstanceStatus
      `Prelude.seq` Prelude.rnf stackSetId
