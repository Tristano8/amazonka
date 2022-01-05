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
-- Module      : Amazonka.EKS.Types.ErrorDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.ErrorDetail where

import qualified Amazonka.Core as Core
import Amazonka.EKS.Types.EKSErrorCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing an error when an asynchronous operation fails.
--
-- /See:/ 'newErrorDetail' smart constructor.
data ErrorDetail = ErrorDetail'
  { -- | An optional field that contains the resource IDs associated with the
    -- error.
    resourceIds :: Prelude.Maybe [Prelude.Text],
    -- | A brief description of the error.
    --
    -- -   __SubnetNotFound__: We couldn\'t find one of the subnets associated
    --     with the cluster.
    --
    -- -   __SecurityGroupNotFound__: We couldn\'t find one of the security
    --     groups associated with the cluster.
    --
    -- -   __EniLimitReached__: You have reached the elastic network interface
    --     limit for your account.
    --
    -- -   __IpNotAvailable__: A subnet associated with the cluster doesn\'t
    --     have any free IP addresses.
    --
    -- -   __AccessDenied__: You don\'t have permissions to perform the
    --     specified operation.
    --
    -- -   __OperationNotPermitted__: The service role associated with the
    --     cluster doesn\'t have the required access permissions for Amazon
    --     EKS.
    --
    -- -   __VpcIdNotFound__: We couldn\'t find the VPC associated with the
    --     cluster.
    errorCode :: Prelude.Maybe EKSErrorCode,
    -- | A more complete description of the error.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ErrorDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceIds', 'errorDetail_resourceIds' - An optional field that contains the resource IDs associated with the
-- error.
--
-- 'errorCode', 'errorDetail_errorCode' - A brief description of the error.
--
-- -   __SubnetNotFound__: We couldn\'t find one of the subnets associated
--     with the cluster.
--
-- -   __SecurityGroupNotFound__: We couldn\'t find one of the security
--     groups associated with the cluster.
--
-- -   __EniLimitReached__: You have reached the elastic network interface
--     limit for your account.
--
-- -   __IpNotAvailable__: A subnet associated with the cluster doesn\'t
--     have any free IP addresses.
--
-- -   __AccessDenied__: You don\'t have permissions to perform the
--     specified operation.
--
-- -   __OperationNotPermitted__: The service role associated with the
--     cluster doesn\'t have the required access permissions for Amazon
--     EKS.
--
-- -   __VpcIdNotFound__: We couldn\'t find the VPC associated with the
--     cluster.
--
-- 'errorMessage', 'errorDetail_errorMessage' - A more complete description of the error.
newErrorDetail ::
  ErrorDetail
newErrorDetail =
  ErrorDetail'
    { resourceIds = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | An optional field that contains the resource IDs associated with the
-- error.
errorDetail_resourceIds :: Lens.Lens' ErrorDetail (Prelude.Maybe [Prelude.Text])
errorDetail_resourceIds = Lens.lens (\ErrorDetail' {resourceIds} -> resourceIds) (\s@ErrorDetail' {} a -> s {resourceIds = a} :: ErrorDetail) Prelude.. Lens.mapping Lens.coerced

-- | A brief description of the error.
--
-- -   __SubnetNotFound__: We couldn\'t find one of the subnets associated
--     with the cluster.
--
-- -   __SecurityGroupNotFound__: We couldn\'t find one of the security
--     groups associated with the cluster.
--
-- -   __EniLimitReached__: You have reached the elastic network interface
--     limit for your account.
--
-- -   __IpNotAvailable__: A subnet associated with the cluster doesn\'t
--     have any free IP addresses.
--
-- -   __AccessDenied__: You don\'t have permissions to perform the
--     specified operation.
--
-- -   __OperationNotPermitted__: The service role associated with the
--     cluster doesn\'t have the required access permissions for Amazon
--     EKS.
--
-- -   __VpcIdNotFound__: We couldn\'t find the VPC associated with the
--     cluster.
errorDetail_errorCode :: Lens.Lens' ErrorDetail (Prelude.Maybe EKSErrorCode)
errorDetail_errorCode = Lens.lens (\ErrorDetail' {errorCode} -> errorCode) (\s@ErrorDetail' {} a -> s {errorCode = a} :: ErrorDetail)

-- | A more complete description of the error.
errorDetail_errorMessage :: Lens.Lens' ErrorDetail (Prelude.Maybe Prelude.Text)
errorDetail_errorMessage = Lens.lens (\ErrorDetail' {errorMessage} -> errorMessage) (\s@ErrorDetail' {} a -> s {errorMessage = a} :: ErrorDetail)

instance Core.FromJSON ErrorDetail where
  parseJSON =
    Core.withObject
      "ErrorDetail"
      ( \x ->
          ErrorDetail'
            Prelude.<$> (x Core..:? "resourceIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "errorCode")
            Prelude.<*> (x Core..:? "errorMessage")
      )

instance Prelude.Hashable ErrorDetail where
  hashWithSalt _salt ErrorDetail' {..} =
    _salt `Prelude.hashWithSalt` resourceIds
      `Prelude.hashWithSalt` errorCode
      `Prelude.hashWithSalt` errorMessage

instance Prelude.NFData ErrorDetail where
  rnf ErrorDetail' {..} =
    Prelude.rnf resourceIds
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf errorMessage
