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
-- Module      : Amazonka.SecurityHub.Types.AwsEc2SecurityGroupDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsEc2SecurityGroupDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsEc2SecurityGroupIpPermission

-- | Details about an Amazon EC2 security group.
--
-- /See:/ 'newAwsEc2SecurityGroupDetails' smart constructor.
data AwsEc2SecurityGroupDetails = AwsEc2SecurityGroupDetails'
  { -- | [VPC only] The outbound rules associated with the security group.
    ipPermissionsEgress :: Prelude.Maybe [AwsEc2SecurityGroupIpPermission],
    -- | The Amazon Web Services account ID of the owner of the security group.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | The inbound rules associated with the security group.
    ipPermissions :: Prelude.Maybe [AwsEc2SecurityGroupIpPermission],
    -- | The name of the security group.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | [VPC only] The ID of the VPC for the security group.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the security group.
    groupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEc2SecurityGroupDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipPermissionsEgress', 'awsEc2SecurityGroupDetails_ipPermissionsEgress' - [VPC only] The outbound rules associated with the security group.
--
-- 'ownerId', 'awsEc2SecurityGroupDetails_ownerId' - The Amazon Web Services account ID of the owner of the security group.
--
-- 'ipPermissions', 'awsEc2SecurityGroupDetails_ipPermissions' - The inbound rules associated with the security group.
--
-- 'groupName', 'awsEc2SecurityGroupDetails_groupName' - The name of the security group.
--
-- 'vpcId', 'awsEc2SecurityGroupDetails_vpcId' - [VPC only] The ID of the VPC for the security group.
--
-- 'groupId', 'awsEc2SecurityGroupDetails_groupId' - The ID of the security group.
newAwsEc2SecurityGroupDetails ::
  AwsEc2SecurityGroupDetails
newAwsEc2SecurityGroupDetails =
  AwsEc2SecurityGroupDetails'
    { ipPermissionsEgress =
        Prelude.Nothing,
      ownerId = Prelude.Nothing,
      ipPermissions = Prelude.Nothing,
      groupName = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      groupId = Prelude.Nothing
    }

-- | [VPC only] The outbound rules associated with the security group.
awsEc2SecurityGroupDetails_ipPermissionsEgress :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe [AwsEc2SecurityGroupIpPermission])
awsEc2SecurityGroupDetails_ipPermissionsEgress = Lens.lens (\AwsEc2SecurityGroupDetails' {ipPermissionsEgress} -> ipPermissionsEgress) (\s@AwsEc2SecurityGroupDetails' {} a -> s {ipPermissionsEgress = a} :: AwsEc2SecurityGroupDetails) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services account ID of the owner of the security group.
awsEc2SecurityGroupDetails_ownerId :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsEc2SecurityGroupDetails_ownerId = Lens.lens (\AwsEc2SecurityGroupDetails' {ownerId} -> ownerId) (\s@AwsEc2SecurityGroupDetails' {} a -> s {ownerId = a} :: AwsEc2SecurityGroupDetails)

-- | The inbound rules associated with the security group.
awsEc2SecurityGroupDetails_ipPermissions :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe [AwsEc2SecurityGroupIpPermission])
awsEc2SecurityGroupDetails_ipPermissions = Lens.lens (\AwsEc2SecurityGroupDetails' {ipPermissions} -> ipPermissions) (\s@AwsEc2SecurityGroupDetails' {} a -> s {ipPermissions = a} :: AwsEc2SecurityGroupDetails) Prelude.. Lens.mapping Lens.coerced

-- | The name of the security group.
awsEc2SecurityGroupDetails_groupName :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsEc2SecurityGroupDetails_groupName = Lens.lens (\AwsEc2SecurityGroupDetails' {groupName} -> groupName) (\s@AwsEc2SecurityGroupDetails' {} a -> s {groupName = a} :: AwsEc2SecurityGroupDetails)

-- | [VPC only] The ID of the VPC for the security group.
awsEc2SecurityGroupDetails_vpcId :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsEc2SecurityGroupDetails_vpcId = Lens.lens (\AwsEc2SecurityGroupDetails' {vpcId} -> vpcId) (\s@AwsEc2SecurityGroupDetails' {} a -> s {vpcId = a} :: AwsEc2SecurityGroupDetails)

-- | The ID of the security group.
awsEc2SecurityGroupDetails_groupId :: Lens.Lens' AwsEc2SecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsEc2SecurityGroupDetails_groupId = Lens.lens (\AwsEc2SecurityGroupDetails' {groupId} -> groupId) (\s@AwsEc2SecurityGroupDetails' {} a -> s {groupId = a} :: AwsEc2SecurityGroupDetails)

instance Core.FromJSON AwsEc2SecurityGroupDetails where
  parseJSON =
    Core.withObject
      "AwsEc2SecurityGroupDetails"
      ( \x ->
          AwsEc2SecurityGroupDetails'
            Prelude.<$> ( x Core..:? "IpPermissionsEgress"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "OwnerId")
            Prelude.<*> (x Core..:? "IpPermissions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "GroupName")
            Prelude.<*> (x Core..:? "VpcId")
            Prelude.<*> (x Core..:? "GroupId")
      )

instance Prelude.Hashable AwsEc2SecurityGroupDetails where
  hashWithSalt _salt AwsEc2SecurityGroupDetails' {..} =
    _salt `Prelude.hashWithSalt` ipPermissionsEgress
      `Prelude.hashWithSalt` ownerId
      `Prelude.hashWithSalt` ipPermissions
      `Prelude.hashWithSalt` groupName
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` groupId

instance Prelude.NFData AwsEc2SecurityGroupDetails where
  rnf AwsEc2SecurityGroupDetails' {..} =
    Prelude.rnf ipPermissionsEgress
      `Prelude.seq` Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf ipPermissions
      `Prelude.seq` Prelude.rnf groupName
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf groupId

instance Core.ToJSON AwsEc2SecurityGroupDetails where
  toJSON AwsEc2SecurityGroupDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IpPermissionsEgress" Core..=)
              Prelude.<$> ipPermissionsEgress,
            ("OwnerId" Core..=) Prelude.<$> ownerId,
            ("IpPermissions" Core..=) Prelude.<$> ipPermissions,
            ("GroupName" Core..=) Prelude.<$> groupName,
            ("VpcId" Core..=) Prelude.<$> vpcId,
            ("GroupId" Core..=) Prelude.<$> groupId
          ]
      )
