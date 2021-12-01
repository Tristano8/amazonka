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
-- Module      : Amazonka.LicenseManager.CreateLicenseConversionTaskForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new license conversion task.
module Amazonka.LicenseManager.CreateLicenseConversionTaskForResource
  ( -- * Creating a Request
    CreateLicenseConversionTaskForResource (..),
    newCreateLicenseConversionTaskForResource,

    -- * Request Lenses
    createLicenseConversionTaskForResource_resourceArn,
    createLicenseConversionTaskForResource_sourceLicenseContext,
    createLicenseConversionTaskForResource_destinationLicenseContext,

    -- * Destructuring the Response
    CreateLicenseConversionTaskForResourceResponse (..),
    newCreateLicenseConversionTaskForResourceResponse,

    -- * Response Lenses
    createLicenseConversionTaskForResourceResponse_licenseConversionTaskId,
    createLicenseConversionTaskForResourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateLicenseConversionTaskForResource' smart constructor.
data CreateLicenseConversionTaskForResource = CreateLicenseConversionTaskForResource'
  { -- | Amazon Resource Name (ARN) of the resource you are converting the
    -- license type for.
    resourceArn :: Prelude.Text,
    -- | Information that identifies the license type you are converting from.
    -- For the structure of the source license, see
    -- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
    -- in the /License Manager User Guide/.
    sourceLicenseContext :: LicenseConversionContext,
    -- | Information that identifies the license type you are converting to. For
    -- the structure of the destination license, see
    -- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
    -- in the /License Manager User Guide/.
    destinationLicenseContext :: LicenseConversionContext
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLicenseConversionTaskForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'createLicenseConversionTaskForResource_resourceArn' - Amazon Resource Name (ARN) of the resource you are converting the
-- license type for.
--
-- 'sourceLicenseContext', 'createLicenseConversionTaskForResource_sourceLicenseContext' - Information that identifies the license type you are converting from.
-- For the structure of the source license, see
-- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
-- in the /License Manager User Guide/.
--
-- 'destinationLicenseContext', 'createLicenseConversionTaskForResource_destinationLicenseContext' - Information that identifies the license type you are converting to. For
-- the structure of the destination license, see
-- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
-- in the /License Manager User Guide/.
newCreateLicenseConversionTaskForResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'sourceLicenseContext'
  LicenseConversionContext ->
  -- | 'destinationLicenseContext'
  LicenseConversionContext ->
  CreateLicenseConversionTaskForResource
newCreateLicenseConversionTaskForResource
  pResourceArn_
  pSourceLicenseContext_
  pDestinationLicenseContext_ =
    CreateLicenseConversionTaskForResource'
      { resourceArn =
          pResourceArn_,
        sourceLicenseContext =
          pSourceLicenseContext_,
        destinationLicenseContext =
          pDestinationLicenseContext_
      }

-- | Amazon Resource Name (ARN) of the resource you are converting the
-- license type for.
createLicenseConversionTaskForResource_resourceArn :: Lens.Lens' CreateLicenseConversionTaskForResource Prelude.Text
createLicenseConversionTaskForResource_resourceArn = Lens.lens (\CreateLicenseConversionTaskForResource' {resourceArn} -> resourceArn) (\s@CreateLicenseConversionTaskForResource' {} a -> s {resourceArn = a} :: CreateLicenseConversionTaskForResource)

-- | Information that identifies the license type you are converting from.
-- For the structure of the source license, see
-- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
-- in the /License Manager User Guide/.
createLicenseConversionTaskForResource_sourceLicenseContext :: Lens.Lens' CreateLicenseConversionTaskForResource LicenseConversionContext
createLicenseConversionTaskForResource_sourceLicenseContext = Lens.lens (\CreateLicenseConversionTaskForResource' {sourceLicenseContext} -> sourceLicenseContext) (\s@CreateLicenseConversionTaskForResource' {} a -> s {sourceLicenseContext = a} :: CreateLicenseConversionTaskForResource)

-- | Information that identifies the license type you are converting to. For
-- the structure of the destination license, see
-- <https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli Convert a license type using the AWS CLI>
-- in the /License Manager User Guide/.
createLicenseConversionTaskForResource_destinationLicenseContext :: Lens.Lens' CreateLicenseConversionTaskForResource LicenseConversionContext
createLicenseConversionTaskForResource_destinationLicenseContext = Lens.lens (\CreateLicenseConversionTaskForResource' {destinationLicenseContext} -> destinationLicenseContext) (\s@CreateLicenseConversionTaskForResource' {} a -> s {destinationLicenseContext = a} :: CreateLicenseConversionTaskForResource)

instance
  Core.AWSRequest
    CreateLicenseConversionTaskForResource
  where
  type
    AWSResponse
      CreateLicenseConversionTaskForResource =
      CreateLicenseConversionTaskForResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLicenseConversionTaskForResourceResponse'
            Prelude.<$> (x Core..?> "LicenseConversionTaskId")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateLicenseConversionTaskForResource
  where
  hashWithSalt
    salt'
    CreateLicenseConversionTaskForResource' {..} =
      salt'
        `Prelude.hashWithSalt` destinationLicenseContext
        `Prelude.hashWithSalt` sourceLicenseContext
        `Prelude.hashWithSalt` resourceArn

instance
  Prelude.NFData
    CreateLicenseConversionTaskForResource
  where
  rnf CreateLicenseConversionTaskForResource' {..} =
    Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf destinationLicenseContext
      `Prelude.seq` Prelude.rnf sourceLicenseContext

instance
  Core.ToHeaders
    CreateLicenseConversionTaskForResource
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.CreateLicenseConversionTaskForResource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    CreateLicenseConversionTaskForResource
  where
  toJSON CreateLicenseConversionTaskForResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ResourceArn" Core..= resourceArn),
            Prelude.Just
              ( "SourceLicenseContext"
                  Core..= sourceLicenseContext
              ),
            Prelude.Just
              ( "DestinationLicenseContext"
                  Core..= destinationLicenseContext
              )
          ]
      )

instance
  Core.ToPath
    CreateLicenseConversionTaskForResource
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    CreateLicenseConversionTaskForResource
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLicenseConversionTaskForResourceResponse' smart constructor.
data CreateLicenseConversionTaskForResourceResponse = CreateLicenseConversionTaskForResourceResponse'
  { -- | The ID of the created license type conversion task.
    licenseConversionTaskId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLicenseConversionTaskForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'licenseConversionTaskId', 'createLicenseConversionTaskForResourceResponse_licenseConversionTaskId' - The ID of the created license type conversion task.
--
-- 'httpStatus', 'createLicenseConversionTaskForResourceResponse_httpStatus' - The response's http status code.
newCreateLicenseConversionTaskForResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLicenseConversionTaskForResourceResponse
newCreateLicenseConversionTaskForResourceResponse
  pHttpStatus_ =
    CreateLicenseConversionTaskForResourceResponse'
      { licenseConversionTaskId =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The ID of the created license type conversion task.
createLicenseConversionTaskForResourceResponse_licenseConversionTaskId :: Lens.Lens' CreateLicenseConversionTaskForResourceResponse (Prelude.Maybe Prelude.Text)
createLicenseConversionTaskForResourceResponse_licenseConversionTaskId = Lens.lens (\CreateLicenseConversionTaskForResourceResponse' {licenseConversionTaskId} -> licenseConversionTaskId) (\s@CreateLicenseConversionTaskForResourceResponse' {} a -> s {licenseConversionTaskId = a} :: CreateLicenseConversionTaskForResourceResponse)

-- | The response's http status code.
createLicenseConversionTaskForResourceResponse_httpStatus :: Lens.Lens' CreateLicenseConversionTaskForResourceResponse Prelude.Int
createLicenseConversionTaskForResourceResponse_httpStatus = Lens.lens (\CreateLicenseConversionTaskForResourceResponse' {httpStatus} -> httpStatus) (\s@CreateLicenseConversionTaskForResourceResponse' {} a -> s {httpStatus = a} :: CreateLicenseConversionTaskForResourceResponse)

instance
  Prelude.NFData
    CreateLicenseConversionTaskForResourceResponse
  where
  rnf
    CreateLicenseConversionTaskForResourceResponse' {..} =
      Prelude.rnf licenseConversionTaskId
        `Prelude.seq` Prelude.rnf httpStatus
