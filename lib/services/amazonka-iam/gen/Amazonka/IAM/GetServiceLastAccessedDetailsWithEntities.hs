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
-- Module      : Amazonka.IAM.GetServiceLastAccessedDetailsWithEntities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After you generate a group or policy report using the
-- @GenerateServiceLastAccessedDetails@ operation, you can use the @JobId@
-- parameter in @GetServiceLastAccessedDetailsWithEntities@. This operation
-- retrieves the status of your report job and a list of entities that
-- could have used group or policy permissions to access the specified
-- service.
--
-- -   __Group__ – For a group report, this operation returns a list of
--     users in the group that could have used the group’s policies in an
--     attempt to access the service.
--
-- -   __Policy__ – For a policy report, this operation returns a list of
--     entities (users or roles) that could have used the policy in an
--     attempt to access the service.
--
-- You can also use this operation for user or role reports to retrieve
-- details about those entities.
--
-- If the operation fails, the @GetServiceLastAccessedDetailsWithEntities@
-- operation returns the reason that it failed.
--
-- By default, the list of associated entities is sorted by date, with the
-- most recent access listed first.
module Amazonka.IAM.GetServiceLastAccessedDetailsWithEntities
  ( -- * Creating a Request
    GetServiceLastAccessedDetailsWithEntities (..),
    newGetServiceLastAccessedDetailsWithEntities,

    -- * Request Lenses
    getServiceLastAccessedDetailsWithEntities_marker,
    getServiceLastAccessedDetailsWithEntities_maxItems,
    getServiceLastAccessedDetailsWithEntities_jobId,
    getServiceLastAccessedDetailsWithEntities_serviceNamespace,

    -- * Destructuring the Response
    GetServiceLastAccessedDetailsWithEntitiesResponse (..),
    newGetServiceLastAccessedDetailsWithEntitiesResponse,

    -- * Response Lenses
    getServiceLastAccessedDetailsWithEntitiesResponse_error,
    getServiceLastAccessedDetailsWithEntitiesResponse_marker,
    getServiceLastAccessedDetailsWithEntitiesResponse_isTruncated,
    getServiceLastAccessedDetailsWithEntitiesResponse_httpStatus,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobStatus,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobCreationDate,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobCompletionDate,
    getServiceLastAccessedDetailsWithEntitiesResponse_entityDetailsList,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetServiceLastAccessedDetailsWithEntities' smart constructor.
data GetServiceLastAccessedDetailsWithEntities = GetServiceLastAccessedDetailsWithEntities'
  { -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the request generated by the
    -- @GenerateServiceLastAccessedDetails@ operation.
    jobId :: Prelude.Text,
    -- | The service namespace for an Amazon Web Services service. Provide the
    -- service namespace to learn when the IAM entity last attempted to access
    -- the specified service.
    --
    -- To learn the service namespace for a service, see
    -- <https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html Actions, resources, and condition keys for Amazon Web Services services>
    -- in the /IAM User Guide/. Choose the name of the service to view details
    -- for that service. In the first paragraph, find the service prefix. For
    -- example, @(service prefix: a4b)@. For more information about service
    -- namespaces, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces Amazon Web Services service namespaces>
    -- in the /Amazon Web Services General Reference/.
    serviceNamespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceLastAccessedDetailsWithEntities' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'getServiceLastAccessedDetailsWithEntities_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'maxItems', 'getServiceLastAccessedDetailsWithEntities_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'jobId', 'getServiceLastAccessedDetailsWithEntities_jobId' - The ID of the request generated by the
-- @GenerateServiceLastAccessedDetails@ operation.
--
-- 'serviceNamespace', 'getServiceLastAccessedDetailsWithEntities_serviceNamespace' - The service namespace for an Amazon Web Services service. Provide the
-- service namespace to learn when the IAM entity last attempted to access
-- the specified service.
--
-- To learn the service namespace for a service, see
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html Actions, resources, and condition keys for Amazon Web Services services>
-- in the /IAM User Guide/. Choose the name of the service to view details
-- for that service. In the first paragraph, find the service prefix. For
-- example, @(service prefix: a4b)@. For more information about service
-- namespaces, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces Amazon Web Services service namespaces>
-- in the /Amazon Web Services General Reference/.
newGetServiceLastAccessedDetailsWithEntities ::
  -- | 'jobId'
  Prelude.Text ->
  -- | 'serviceNamespace'
  Prelude.Text ->
  GetServiceLastAccessedDetailsWithEntities
newGetServiceLastAccessedDetailsWithEntities
  pJobId_
  pServiceNamespace_ =
    GetServiceLastAccessedDetailsWithEntities'
      { marker =
          Prelude.Nothing,
        maxItems = Prelude.Nothing,
        jobId = pJobId_,
        serviceNamespace =
          pServiceNamespace_
      }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
getServiceLastAccessedDetailsWithEntities_marker :: Lens.Lens' GetServiceLastAccessedDetailsWithEntities (Prelude.Maybe Prelude.Text)
getServiceLastAccessedDetailsWithEntities_marker = Lens.lens (\GetServiceLastAccessedDetailsWithEntities' {marker} -> marker) (\s@GetServiceLastAccessedDetailsWithEntities' {} a -> s {marker = a} :: GetServiceLastAccessedDetailsWithEntities)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
getServiceLastAccessedDetailsWithEntities_maxItems :: Lens.Lens' GetServiceLastAccessedDetailsWithEntities (Prelude.Maybe Prelude.Natural)
getServiceLastAccessedDetailsWithEntities_maxItems = Lens.lens (\GetServiceLastAccessedDetailsWithEntities' {maxItems} -> maxItems) (\s@GetServiceLastAccessedDetailsWithEntities' {} a -> s {maxItems = a} :: GetServiceLastAccessedDetailsWithEntities)

-- | The ID of the request generated by the
-- @GenerateServiceLastAccessedDetails@ operation.
getServiceLastAccessedDetailsWithEntities_jobId :: Lens.Lens' GetServiceLastAccessedDetailsWithEntities Prelude.Text
getServiceLastAccessedDetailsWithEntities_jobId = Lens.lens (\GetServiceLastAccessedDetailsWithEntities' {jobId} -> jobId) (\s@GetServiceLastAccessedDetailsWithEntities' {} a -> s {jobId = a} :: GetServiceLastAccessedDetailsWithEntities)

-- | The service namespace for an Amazon Web Services service. Provide the
-- service namespace to learn when the IAM entity last attempted to access
-- the specified service.
--
-- To learn the service namespace for a service, see
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html Actions, resources, and condition keys for Amazon Web Services services>
-- in the /IAM User Guide/. Choose the name of the service to view details
-- for that service. In the first paragraph, find the service prefix. For
-- example, @(service prefix: a4b)@. For more information about service
-- namespaces, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces Amazon Web Services service namespaces>
-- in the /Amazon Web Services General Reference/.
getServiceLastAccessedDetailsWithEntities_serviceNamespace :: Lens.Lens' GetServiceLastAccessedDetailsWithEntities Prelude.Text
getServiceLastAccessedDetailsWithEntities_serviceNamespace = Lens.lens (\GetServiceLastAccessedDetailsWithEntities' {serviceNamespace} -> serviceNamespace) (\s@GetServiceLastAccessedDetailsWithEntities' {} a -> s {serviceNamespace = a} :: GetServiceLastAccessedDetailsWithEntities)

instance
  Core.AWSRequest
    GetServiceLastAccessedDetailsWithEntities
  where
  type
    AWSResponse
      GetServiceLastAccessedDetailsWithEntities =
      GetServiceLastAccessedDetailsWithEntitiesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetServiceLastAccessedDetailsWithEntitiesResult"
      ( \s h x ->
          GetServiceLastAccessedDetailsWithEntitiesResponse'
            Prelude.<$> (x Core..@? "Error")
              Prelude.<*> (x Core..@? "Marker")
              Prelude.<*> (x Core..@? "IsTruncated")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
              Prelude.<*> (x Core..@ "JobStatus")
              Prelude.<*> (x Core..@ "JobCreationDate")
              Prelude.<*> (x Core..@ "JobCompletionDate")
              Prelude.<*> ( x Core..@? "EntityDetailsList"
                              Core..!@ Prelude.mempty
                              Prelude.>>= Core.parseXMLList "member"
                          )
      )

instance
  Prelude.Hashable
    GetServiceLastAccessedDetailsWithEntities
  where
  hashWithSalt
    _salt
    GetServiceLastAccessedDetailsWithEntities' {..} =
      _salt `Prelude.hashWithSalt` marker
        `Prelude.hashWithSalt` maxItems
        `Prelude.hashWithSalt` jobId
        `Prelude.hashWithSalt` serviceNamespace

instance
  Prelude.NFData
    GetServiceLastAccessedDetailsWithEntities
  where
  rnf GetServiceLastAccessedDetailsWithEntities' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf serviceNamespace

instance
  Core.ToHeaders
    GetServiceLastAccessedDetailsWithEntities
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetServiceLastAccessedDetailsWithEntities
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetServiceLastAccessedDetailsWithEntities
  where
  toQuery
    GetServiceLastAccessedDetailsWithEntities' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "GetServiceLastAccessedDetailsWithEntities" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2010-05-08" :: Prelude.ByteString),
          "Marker" Core.=: marker,
          "MaxItems" Core.=: maxItems,
          "JobId" Core.=: jobId,
          "ServiceNamespace" Core.=: serviceNamespace
        ]

-- | /See:/ 'newGetServiceLastAccessedDetailsWithEntitiesResponse' smart constructor.
data GetServiceLastAccessedDetailsWithEntitiesResponse = GetServiceLastAccessedDetailsWithEntitiesResponse'
  { -- | An object that contains details about the reason the operation failed.
    error :: Prelude.Maybe ErrorDetails,
    -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the job.
    jobStatus :: JobStatusType,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- report job was created.
    jobCreationDate :: Core.ISO8601,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- generated report job was completed or failed.
    --
    -- This field is null if the job is still in progress, as indicated by a
    -- job status value of @IN_PROGRESS@.
    jobCompletionDate :: Core.ISO8601,
    -- | An @EntityDetailsList@ object that contains details about when an IAM
    -- entity (user or role) used group or policy permissions in an attempt to
    -- access the specified Amazon Web Services service.
    entityDetailsList :: [EntityDetails]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceLastAccessedDetailsWithEntitiesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'getServiceLastAccessedDetailsWithEntitiesResponse_error' - An object that contains details about the reason the operation failed.
--
-- 'marker', 'getServiceLastAccessedDetailsWithEntitiesResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'isTruncated', 'getServiceLastAccessedDetailsWithEntitiesResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'httpStatus', 'getServiceLastAccessedDetailsWithEntitiesResponse_httpStatus' - The response's http status code.
--
-- 'jobStatus', 'getServiceLastAccessedDetailsWithEntitiesResponse_jobStatus' - The status of the job.
--
-- 'jobCreationDate', 'getServiceLastAccessedDetailsWithEntitiesResponse_jobCreationDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
--
-- 'jobCompletionDate', 'getServiceLastAccessedDetailsWithEntitiesResponse_jobCompletionDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
--
-- 'entityDetailsList', 'getServiceLastAccessedDetailsWithEntitiesResponse_entityDetailsList' - An @EntityDetailsList@ object that contains details about when an IAM
-- entity (user or role) used group or policy permissions in an attempt to
-- access the specified Amazon Web Services service.
newGetServiceLastAccessedDetailsWithEntitiesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobStatus'
  JobStatusType ->
  -- | 'jobCreationDate'
  Prelude.UTCTime ->
  -- | 'jobCompletionDate'
  Prelude.UTCTime ->
  GetServiceLastAccessedDetailsWithEntitiesResponse
newGetServiceLastAccessedDetailsWithEntitiesResponse
  pHttpStatus_
  pJobStatus_
  pJobCreationDate_
  pJobCompletionDate_ =
    GetServiceLastAccessedDetailsWithEntitiesResponse'
      { error =
          Prelude.Nothing,
        marker = Prelude.Nothing,
        isTruncated =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_,
        jobStatus = pJobStatus_,
        jobCreationDate =
          Core._Time
            Lens.# pJobCreationDate_,
        jobCompletionDate =
          Core._Time
            Lens.# pJobCompletionDate_,
        entityDetailsList =
          Prelude.mempty
      }

-- | An object that contains details about the reason the operation failed.
getServiceLastAccessedDetailsWithEntitiesResponse_error :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Prelude.Maybe ErrorDetails)
getServiceLastAccessedDetailsWithEntitiesResponse_error = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {error} -> error) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {error = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse)

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
getServiceLastAccessedDetailsWithEntitiesResponse_marker :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Prelude.Maybe Prelude.Text)
getServiceLastAccessedDetailsWithEntitiesResponse_marker = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {marker} -> marker) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {marker = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
getServiceLastAccessedDetailsWithEntitiesResponse_isTruncated :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse (Prelude.Maybe Prelude.Bool)
getServiceLastAccessedDetailsWithEntitiesResponse_isTruncated = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {isTruncated} -> isTruncated) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {isTruncated = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse)

-- | The response's http status code.
getServiceLastAccessedDetailsWithEntitiesResponse_httpStatus :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse Prelude.Int
getServiceLastAccessedDetailsWithEntitiesResponse_httpStatus = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {httpStatus} -> httpStatus) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {httpStatus = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse)

-- | The status of the job.
getServiceLastAccessedDetailsWithEntitiesResponse_jobStatus :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse JobStatusType
getServiceLastAccessedDetailsWithEntitiesResponse_jobStatus = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {jobStatus} -> jobStatus) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {jobStatus = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse)

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
getServiceLastAccessedDetailsWithEntitiesResponse_jobCreationDate :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse Prelude.UTCTime
getServiceLastAccessedDetailsWithEntitiesResponse_jobCreationDate = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {jobCreationDate} -> jobCreationDate) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {jobCreationDate = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse) Prelude.. Core._Time

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
getServiceLastAccessedDetailsWithEntitiesResponse_jobCompletionDate :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse Prelude.UTCTime
getServiceLastAccessedDetailsWithEntitiesResponse_jobCompletionDate = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {jobCompletionDate} -> jobCompletionDate) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {jobCompletionDate = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse) Prelude.. Core._Time

-- | An @EntityDetailsList@ object that contains details about when an IAM
-- entity (user or role) used group or policy permissions in an attempt to
-- access the specified Amazon Web Services service.
getServiceLastAccessedDetailsWithEntitiesResponse_entityDetailsList :: Lens.Lens' GetServiceLastAccessedDetailsWithEntitiesResponse [EntityDetails]
getServiceLastAccessedDetailsWithEntitiesResponse_entityDetailsList = Lens.lens (\GetServiceLastAccessedDetailsWithEntitiesResponse' {entityDetailsList} -> entityDetailsList) (\s@GetServiceLastAccessedDetailsWithEntitiesResponse' {} a -> s {entityDetailsList = a} :: GetServiceLastAccessedDetailsWithEntitiesResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    GetServiceLastAccessedDetailsWithEntitiesResponse
  where
  rnf
    GetServiceLastAccessedDetailsWithEntitiesResponse' {..} =
      Prelude.rnf error
        `Prelude.seq` Prelude.rnf marker
        `Prelude.seq` Prelude.rnf isTruncated
        `Prelude.seq` Prelude.rnf httpStatus
        `Prelude.seq` Prelude.rnf jobStatus
        `Prelude.seq` Prelude.rnf jobCreationDate
        `Prelude.seq` Prelude.rnf jobCompletionDate
        `Prelude.seq` Prelude.rnf entityDetailsList
