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
-- Module      : Amazonka.CodeDeploy.DeleteDeploymentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment group.
module Amazonka.CodeDeploy.DeleteDeploymentGroup
  ( -- * Creating a Request
    DeleteDeploymentGroup (..),
    newDeleteDeploymentGroup,

    -- * Request Lenses
    deleteDeploymentGroup_applicationName,
    deleteDeploymentGroup_deploymentGroupName,

    -- * Destructuring the Response
    DeleteDeploymentGroupResponse (..),
    newDeleteDeploymentGroupResponse,

    -- * Response Lenses
    deleteDeploymentGroupResponse_hooksNotCleanedUp,
    deleteDeploymentGroupResponse_httpStatus,
  )
where

import Amazonka.CodeDeploy.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @DeleteDeploymentGroup@ operation.
--
-- /See:/ 'newDeleteDeploymentGroup' smart constructor.
data DeleteDeploymentGroup = DeleteDeploymentGroup'
  { -- | The name of an AWS CodeDeploy application associated with the IAM user
    -- or AWS account.
    applicationName :: Prelude.Text,
    -- | The name of a deployment group for the specified application.
    deploymentGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeploymentGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'deleteDeploymentGroup_applicationName' - The name of an AWS CodeDeploy application associated with the IAM user
-- or AWS account.
--
-- 'deploymentGroupName', 'deleteDeploymentGroup_deploymentGroupName' - The name of a deployment group for the specified application.
newDeleteDeploymentGroup ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'deploymentGroupName'
  Prelude.Text ->
  DeleteDeploymentGroup
newDeleteDeploymentGroup
  pApplicationName_
  pDeploymentGroupName_ =
    DeleteDeploymentGroup'
      { applicationName =
          pApplicationName_,
        deploymentGroupName = pDeploymentGroupName_
      }

-- | The name of an AWS CodeDeploy application associated with the IAM user
-- or AWS account.
deleteDeploymentGroup_applicationName :: Lens.Lens' DeleteDeploymentGroup Prelude.Text
deleteDeploymentGroup_applicationName = Lens.lens (\DeleteDeploymentGroup' {applicationName} -> applicationName) (\s@DeleteDeploymentGroup' {} a -> s {applicationName = a} :: DeleteDeploymentGroup)

-- | The name of a deployment group for the specified application.
deleteDeploymentGroup_deploymentGroupName :: Lens.Lens' DeleteDeploymentGroup Prelude.Text
deleteDeploymentGroup_deploymentGroupName = Lens.lens (\DeleteDeploymentGroup' {deploymentGroupName} -> deploymentGroupName) (\s@DeleteDeploymentGroup' {} a -> s {deploymentGroupName = a} :: DeleteDeploymentGroup)

instance Core.AWSRequest DeleteDeploymentGroup where
  type
    AWSResponse DeleteDeploymentGroup =
      DeleteDeploymentGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDeploymentGroupResponse'
            Prelude.<$> ( x Core..?> "hooksNotCleanedUp"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDeploymentGroup where
  hashWithSalt _salt DeleteDeploymentGroup' {..} =
    _salt `Prelude.hashWithSalt` applicationName
      `Prelude.hashWithSalt` deploymentGroupName

instance Prelude.NFData DeleteDeploymentGroup where
  rnf DeleteDeploymentGroup' {..} =
    Prelude.rnf applicationName
      `Prelude.seq` Prelude.rnf deploymentGroupName

instance Core.ToHeaders DeleteDeploymentGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeDeploy_20141006.DeleteDeploymentGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDeploymentGroup where
  toJSON DeleteDeploymentGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("applicationName" Core..= applicationName),
            Prelude.Just
              ("deploymentGroupName" Core..= deploymentGroupName)
          ]
      )

instance Core.ToPath DeleteDeploymentGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDeploymentGroup where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a @DeleteDeploymentGroup@ operation.
--
-- /See:/ 'newDeleteDeploymentGroupResponse' smart constructor.
data DeleteDeploymentGroupResponse = DeleteDeploymentGroupResponse'
  { -- | If the output contains no data, and the corresponding deployment group
    -- contained at least one Auto Scaling group, AWS CodeDeploy successfully
    -- removed all corresponding Auto Scaling lifecycle event hooks from the
    -- Amazon EC2 instances in the Auto Scaling group. If the output contains
    -- data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
    -- hooks from the Amazon EC2 instances in the Auto Scaling group.
    hooksNotCleanedUp :: Prelude.Maybe [AutoScalingGroup],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeploymentGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hooksNotCleanedUp', 'deleteDeploymentGroupResponse_hooksNotCleanedUp' - If the output contains no data, and the corresponding deployment group
-- contained at least one Auto Scaling group, AWS CodeDeploy successfully
-- removed all corresponding Auto Scaling lifecycle event hooks from the
-- Amazon EC2 instances in the Auto Scaling group. If the output contains
-- data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
-- hooks from the Amazon EC2 instances in the Auto Scaling group.
--
-- 'httpStatus', 'deleteDeploymentGroupResponse_httpStatus' - The response's http status code.
newDeleteDeploymentGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDeploymentGroupResponse
newDeleteDeploymentGroupResponse pHttpStatus_ =
  DeleteDeploymentGroupResponse'
    { hooksNotCleanedUp =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the output contains no data, and the corresponding deployment group
-- contained at least one Auto Scaling group, AWS CodeDeploy successfully
-- removed all corresponding Auto Scaling lifecycle event hooks from the
-- Amazon EC2 instances in the Auto Scaling group. If the output contains
-- data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
-- hooks from the Amazon EC2 instances in the Auto Scaling group.
deleteDeploymentGroupResponse_hooksNotCleanedUp :: Lens.Lens' DeleteDeploymentGroupResponse (Prelude.Maybe [AutoScalingGroup])
deleteDeploymentGroupResponse_hooksNotCleanedUp = Lens.lens (\DeleteDeploymentGroupResponse' {hooksNotCleanedUp} -> hooksNotCleanedUp) (\s@DeleteDeploymentGroupResponse' {} a -> s {hooksNotCleanedUp = a} :: DeleteDeploymentGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
deleteDeploymentGroupResponse_httpStatus :: Lens.Lens' DeleteDeploymentGroupResponse Prelude.Int
deleteDeploymentGroupResponse_httpStatus = Lens.lens (\DeleteDeploymentGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteDeploymentGroupResponse' {} a -> s {httpStatus = a} :: DeleteDeploymentGroupResponse)

instance Prelude.NFData DeleteDeploymentGroupResponse where
  rnf DeleteDeploymentGroupResponse' {..} =
    Prelude.rnf hooksNotCleanedUp
      `Prelude.seq` Prelude.rnf httpStatus
