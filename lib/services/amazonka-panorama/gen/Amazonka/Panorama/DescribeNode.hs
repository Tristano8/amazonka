{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Panorama.DescribeNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a node.
module Amazonka.Panorama.DescribeNode
  ( -- * Creating a Request
    DescribeNode (..),
    newDescribeNode,

    -- * Request Lenses
    describeNode_ownerAccount,
    describeNode_nodeId,

    -- * Destructuring the Response
    DescribeNodeResponse (..),
    newDescribeNodeResponse,

    -- * Response Lenses
    describeNodeResponse_assetName,
    describeNodeResponse_packageArn,
    describeNodeResponse_httpStatus,
    describeNodeResponse_nodeId,
    describeNodeResponse_name,
    describeNodeResponse_category,
    describeNodeResponse_ownerAccount,
    describeNodeResponse_packageName,
    describeNodeResponse_packageId,
    describeNodeResponse_packageVersion,
    describeNodeResponse_patchVersion,
    describeNodeResponse_nodeInterface,
    describeNodeResponse_description,
    describeNodeResponse_createdTime,
    describeNodeResponse_lastUpdatedTime,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeNode' smart constructor.
data DescribeNode = DescribeNode'
  { -- | The account ID of the node\'s owner.
    ownerAccount :: Prelude.Maybe Prelude.Text,
    -- | The node\'s ID.
    nodeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ownerAccount', 'describeNode_ownerAccount' - The account ID of the node\'s owner.
--
-- 'nodeId', 'describeNode_nodeId' - The node\'s ID.
newDescribeNode ::
  -- | 'nodeId'
  Prelude.Text ->
  DescribeNode
newDescribeNode pNodeId_ =
  DescribeNode'
    { ownerAccount = Prelude.Nothing,
      nodeId = pNodeId_
    }

-- | The account ID of the node\'s owner.
describeNode_ownerAccount :: Lens.Lens' DescribeNode (Prelude.Maybe Prelude.Text)
describeNode_ownerAccount = Lens.lens (\DescribeNode' {ownerAccount} -> ownerAccount) (\s@DescribeNode' {} a -> s {ownerAccount = a} :: DescribeNode)

-- | The node\'s ID.
describeNode_nodeId :: Lens.Lens' DescribeNode Prelude.Text
describeNode_nodeId = Lens.lens (\DescribeNode' {nodeId} -> nodeId) (\s@DescribeNode' {} a -> s {nodeId = a} :: DescribeNode)

instance Core.AWSRequest DescribeNode where
  type AWSResponse DescribeNode = DescribeNodeResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeNodeResponse'
            Prelude.<$> (x Core..?> "AssetName")
            Prelude.<*> (x Core..?> "PackageArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "NodeId")
            Prelude.<*> (x Core..:> "Name")
            Prelude.<*> (x Core..:> "Category")
            Prelude.<*> (x Core..:> "OwnerAccount")
            Prelude.<*> (x Core..:> "PackageName")
            Prelude.<*> (x Core..:> "PackageId")
            Prelude.<*> (x Core..:> "PackageVersion")
            Prelude.<*> (x Core..:> "PatchVersion")
            Prelude.<*> (x Core..:> "NodeInterface")
            Prelude.<*> (x Core..:> "Description")
            Prelude.<*> (x Core..:> "CreatedTime")
            Prelude.<*> (x Core..:> "LastUpdatedTime")
      )

instance Prelude.Hashable DescribeNode where
  hashWithSalt _salt DescribeNode' {..} =
    _salt `Prelude.hashWithSalt` ownerAccount
      `Prelude.hashWithSalt` nodeId

instance Prelude.NFData DescribeNode where
  rnf DescribeNode' {..} =
    Prelude.rnf ownerAccount
      `Prelude.seq` Prelude.rnf nodeId

instance Core.ToHeaders DescribeNode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeNode where
  toPath DescribeNode' {..} =
    Prelude.mconcat ["/nodes/", Core.toBS nodeId]

instance Core.ToQuery DescribeNode where
  toQuery DescribeNode' {..} =
    Prelude.mconcat
      ["OwnerAccount" Core.=: ownerAccount]

-- | /See:/ 'newDescribeNodeResponse' smart constructor.
data DescribeNodeResponse = DescribeNodeResponse'
  { -- | The node\'s asset name.
    assetName :: Prelude.Maybe Prelude.Text,
    -- | The node\'s ARN.
    packageArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The node\'s ID.
    nodeId :: Prelude.Text,
    -- | The node\'s name.
    name :: Prelude.Text,
    -- | The node\'s category.
    category :: NodeCategory,
    -- | The account ID of the node\'s owner.
    ownerAccount :: Prelude.Text,
    -- | The node\'s package name.
    packageName :: Prelude.Text,
    -- | The node\'s package ID.
    packageId :: Prelude.Text,
    -- | The node\'s package version.
    packageVersion :: Prelude.Text,
    -- | The node\'s patch version.
    patchVersion :: Prelude.Text,
    -- | The node\'s interface.
    nodeInterface :: NodeInterface,
    -- | The node\'s description.
    description :: Prelude.Text,
    -- | When the node was created.
    createdTime :: Core.POSIX,
    -- | When the node was updated.
    lastUpdatedTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assetName', 'describeNodeResponse_assetName' - The node\'s asset name.
--
-- 'packageArn', 'describeNodeResponse_packageArn' - The node\'s ARN.
--
-- 'httpStatus', 'describeNodeResponse_httpStatus' - The response's http status code.
--
-- 'nodeId', 'describeNodeResponse_nodeId' - The node\'s ID.
--
-- 'name', 'describeNodeResponse_name' - The node\'s name.
--
-- 'category', 'describeNodeResponse_category' - The node\'s category.
--
-- 'ownerAccount', 'describeNodeResponse_ownerAccount' - The account ID of the node\'s owner.
--
-- 'packageName', 'describeNodeResponse_packageName' - The node\'s package name.
--
-- 'packageId', 'describeNodeResponse_packageId' - The node\'s package ID.
--
-- 'packageVersion', 'describeNodeResponse_packageVersion' - The node\'s package version.
--
-- 'patchVersion', 'describeNodeResponse_patchVersion' - The node\'s patch version.
--
-- 'nodeInterface', 'describeNodeResponse_nodeInterface' - The node\'s interface.
--
-- 'description', 'describeNodeResponse_description' - The node\'s description.
--
-- 'createdTime', 'describeNodeResponse_createdTime' - When the node was created.
--
-- 'lastUpdatedTime', 'describeNodeResponse_lastUpdatedTime' - When the node was updated.
newDescribeNodeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'nodeId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'category'
  NodeCategory ->
  -- | 'ownerAccount'
  Prelude.Text ->
  -- | 'packageName'
  Prelude.Text ->
  -- | 'packageId'
  Prelude.Text ->
  -- | 'packageVersion'
  Prelude.Text ->
  -- | 'patchVersion'
  Prelude.Text ->
  -- | 'nodeInterface'
  NodeInterface ->
  -- | 'description'
  Prelude.Text ->
  -- | 'createdTime'
  Prelude.UTCTime ->
  -- | 'lastUpdatedTime'
  Prelude.UTCTime ->
  DescribeNodeResponse
newDescribeNodeResponse
  pHttpStatus_
  pNodeId_
  pName_
  pCategory_
  pOwnerAccount_
  pPackageName_
  pPackageId_
  pPackageVersion_
  pPatchVersion_
  pNodeInterface_
  pDescription_
  pCreatedTime_
  pLastUpdatedTime_ =
    DescribeNodeResponse'
      { assetName = Prelude.Nothing,
        packageArn = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        nodeId = pNodeId_,
        name = pName_,
        category = pCategory_,
        ownerAccount = pOwnerAccount_,
        packageName = pPackageName_,
        packageId = pPackageId_,
        packageVersion = pPackageVersion_,
        patchVersion = pPatchVersion_,
        nodeInterface = pNodeInterface_,
        description = pDescription_,
        createdTime = Core._Time Lens.# pCreatedTime_,
        lastUpdatedTime =
          Core._Time Lens.# pLastUpdatedTime_
      }

-- | The node\'s asset name.
describeNodeResponse_assetName :: Lens.Lens' DescribeNodeResponse (Prelude.Maybe Prelude.Text)
describeNodeResponse_assetName = Lens.lens (\DescribeNodeResponse' {assetName} -> assetName) (\s@DescribeNodeResponse' {} a -> s {assetName = a} :: DescribeNodeResponse)

-- | The node\'s ARN.
describeNodeResponse_packageArn :: Lens.Lens' DescribeNodeResponse (Prelude.Maybe Prelude.Text)
describeNodeResponse_packageArn = Lens.lens (\DescribeNodeResponse' {packageArn} -> packageArn) (\s@DescribeNodeResponse' {} a -> s {packageArn = a} :: DescribeNodeResponse)

-- | The response's http status code.
describeNodeResponse_httpStatus :: Lens.Lens' DescribeNodeResponse Prelude.Int
describeNodeResponse_httpStatus = Lens.lens (\DescribeNodeResponse' {httpStatus} -> httpStatus) (\s@DescribeNodeResponse' {} a -> s {httpStatus = a} :: DescribeNodeResponse)

-- | The node\'s ID.
describeNodeResponse_nodeId :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_nodeId = Lens.lens (\DescribeNodeResponse' {nodeId} -> nodeId) (\s@DescribeNodeResponse' {} a -> s {nodeId = a} :: DescribeNodeResponse)

-- | The node\'s name.
describeNodeResponse_name :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_name = Lens.lens (\DescribeNodeResponse' {name} -> name) (\s@DescribeNodeResponse' {} a -> s {name = a} :: DescribeNodeResponse)

-- | The node\'s category.
describeNodeResponse_category :: Lens.Lens' DescribeNodeResponse NodeCategory
describeNodeResponse_category = Lens.lens (\DescribeNodeResponse' {category} -> category) (\s@DescribeNodeResponse' {} a -> s {category = a} :: DescribeNodeResponse)

-- | The account ID of the node\'s owner.
describeNodeResponse_ownerAccount :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_ownerAccount = Lens.lens (\DescribeNodeResponse' {ownerAccount} -> ownerAccount) (\s@DescribeNodeResponse' {} a -> s {ownerAccount = a} :: DescribeNodeResponse)

-- | The node\'s package name.
describeNodeResponse_packageName :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_packageName = Lens.lens (\DescribeNodeResponse' {packageName} -> packageName) (\s@DescribeNodeResponse' {} a -> s {packageName = a} :: DescribeNodeResponse)

-- | The node\'s package ID.
describeNodeResponse_packageId :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_packageId = Lens.lens (\DescribeNodeResponse' {packageId} -> packageId) (\s@DescribeNodeResponse' {} a -> s {packageId = a} :: DescribeNodeResponse)

-- | The node\'s package version.
describeNodeResponse_packageVersion :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_packageVersion = Lens.lens (\DescribeNodeResponse' {packageVersion} -> packageVersion) (\s@DescribeNodeResponse' {} a -> s {packageVersion = a} :: DescribeNodeResponse)

-- | The node\'s patch version.
describeNodeResponse_patchVersion :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_patchVersion = Lens.lens (\DescribeNodeResponse' {patchVersion} -> patchVersion) (\s@DescribeNodeResponse' {} a -> s {patchVersion = a} :: DescribeNodeResponse)

-- | The node\'s interface.
describeNodeResponse_nodeInterface :: Lens.Lens' DescribeNodeResponse NodeInterface
describeNodeResponse_nodeInterface = Lens.lens (\DescribeNodeResponse' {nodeInterface} -> nodeInterface) (\s@DescribeNodeResponse' {} a -> s {nodeInterface = a} :: DescribeNodeResponse)

-- | The node\'s description.
describeNodeResponse_description :: Lens.Lens' DescribeNodeResponse Prelude.Text
describeNodeResponse_description = Lens.lens (\DescribeNodeResponse' {description} -> description) (\s@DescribeNodeResponse' {} a -> s {description = a} :: DescribeNodeResponse)

-- | When the node was created.
describeNodeResponse_createdTime :: Lens.Lens' DescribeNodeResponse Prelude.UTCTime
describeNodeResponse_createdTime = Lens.lens (\DescribeNodeResponse' {createdTime} -> createdTime) (\s@DescribeNodeResponse' {} a -> s {createdTime = a} :: DescribeNodeResponse) Prelude.. Core._Time

-- | When the node was updated.
describeNodeResponse_lastUpdatedTime :: Lens.Lens' DescribeNodeResponse Prelude.UTCTime
describeNodeResponse_lastUpdatedTime = Lens.lens (\DescribeNodeResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@DescribeNodeResponse' {} a -> s {lastUpdatedTime = a} :: DescribeNodeResponse) Prelude.. Core._Time

instance Prelude.NFData DescribeNodeResponse where
  rnf DescribeNodeResponse' {..} =
    Prelude.rnf assetName
      `Prelude.seq` Prelude.rnf packageArn
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf nodeId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf ownerAccount
      `Prelude.seq` Prelude.rnf packageName
      `Prelude.seq` Prelude.rnf packageId
      `Prelude.seq` Prelude.rnf packageVersion
      `Prelude.seq` Prelude.rnf patchVersion
      `Prelude.seq` Prelude.rnf nodeInterface
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf lastUpdatedTime
