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
-- Module      : Amazonka.AmplifyBackend.RemoveAllBackends
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes all backend environments from your Amplify project.
module Amazonka.AmplifyBackend.RemoveAllBackends
  ( -- * Creating a Request
    RemoveAllBackends (..),
    newRemoveAllBackends,

    -- * Request Lenses
    removeAllBackends_cleanAmplifyApp,
    removeAllBackends_appId,

    -- * Destructuring the Response
    RemoveAllBackendsResponse (..),
    newRemoveAllBackendsResponse,

    -- * Response Lenses
    removeAllBackendsResponse_jobId,
    removeAllBackendsResponse_status,
    removeAllBackendsResponse_error,
    removeAllBackendsResponse_operation,
    removeAllBackendsResponse_appId,
    removeAllBackendsResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request body for RemoveAllBackends.
--
-- /See:/ 'newRemoveAllBackends' smart constructor.
data RemoveAllBackends = RemoveAllBackends'
  { -- | Cleans up the Amplify Console app if this value is set to true.
    cleanAmplifyApp :: Prelude.Maybe Prelude.Bool,
    -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveAllBackends' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cleanAmplifyApp', 'removeAllBackends_cleanAmplifyApp' - Cleans up the Amplify Console app if this value is set to true.
--
-- 'appId', 'removeAllBackends_appId' - The app ID.
newRemoveAllBackends ::
  -- | 'appId'
  Prelude.Text ->
  RemoveAllBackends
newRemoveAllBackends pAppId_ =
  RemoveAllBackends'
    { cleanAmplifyApp =
        Prelude.Nothing,
      appId = pAppId_
    }

-- | Cleans up the Amplify Console app if this value is set to true.
removeAllBackends_cleanAmplifyApp :: Lens.Lens' RemoveAllBackends (Prelude.Maybe Prelude.Bool)
removeAllBackends_cleanAmplifyApp = Lens.lens (\RemoveAllBackends' {cleanAmplifyApp} -> cleanAmplifyApp) (\s@RemoveAllBackends' {} a -> s {cleanAmplifyApp = a} :: RemoveAllBackends)

-- | The app ID.
removeAllBackends_appId :: Lens.Lens' RemoveAllBackends Prelude.Text
removeAllBackends_appId = Lens.lens (\RemoveAllBackends' {appId} -> appId) (\s@RemoveAllBackends' {} a -> s {appId = a} :: RemoveAllBackends)

instance Core.AWSRequest RemoveAllBackends where
  type
    AWSResponse RemoveAllBackends =
      RemoveAllBackendsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemoveAllBackendsResponse'
            Prelude.<$> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RemoveAllBackends where
  hashWithSalt _salt RemoveAllBackends' {..} =
    _salt `Prelude.hashWithSalt` cleanAmplifyApp
      `Prelude.hashWithSalt` appId

instance Prelude.NFData RemoveAllBackends where
  rnf RemoveAllBackends' {..} =
    Prelude.rnf cleanAmplifyApp
      `Prelude.seq` Prelude.rnf appId

instance Core.ToHeaders RemoveAllBackends where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RemoveAllBackends where
  toJSON RemoveAllBackends' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("cleanAmplifyApp" Core..=)
              Prelude.<$> cleanAmplifyApp
          ]
      )

instance Core.ToPath RemoveAllBackends where
  toPath RemoveAllBackends' {..} =
    Prelude.mconcat
      ["/backend/", Core.toBS appId, "/remove"]

instance Core.ToQuery RemoveAllBackends where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRemoveAllBackendsResponse' smart constructor.
data RemoveAllBackendsResponse = RemoveAllBackendsResponse'
  { -- | The ID for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The current status of the request.
    status :: Prelude.Maybe Prelude.Text,
    -- | If the request fails, this error is returned.
    error :: Prelude.Maybe Prelude.Text,
    -- | The name of the operation.
    operation :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveAllBackendsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'removeAllBackendsResponse_jobId' - The ID for the job.
--
-- 'status', 'removeAllBackendsResponse_status' - The current status of the request.
--
-- 'error', 'removeAllBackendsResponse_error' - If the request fails, this error is returned.
--
-- 'operation', 'removeAllBackendsResponse_operation' - The name of the operation.
--
-- 'appId', 'removeAllBackendsResponse_appId' - The app ID.
--
-- 'httpStatus', 'removeAllBackendsResponse_httpStatus' - The response's http status code.
newRemoveAllBackendsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RemoveAllBackendsResponse
newRemoveAllBackendsResponse pHttpStatus_ =
  RemoveAllBackendsResponse'
    { jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      error = Prelude.Nothing,
      operation = Prelude.Nothing,
      appId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID for the job.
removeAllBackendsResponse_jobId :: Lens.Lens' RemoveAllBackendsResponse (Prelude.Maybe Prelude.Text)
removeAllBackendsResponse_jobId = Lens.lens (\RemoveAllBackendsResponse' {jobId} -> jobId) (\s@RemoveAllBackendsResponse' {} a -> s {jobId = a} :: RemoveAllBackendsResponse)

-- | The current status of the request.
removeAllBackendsResponse_status :: Lens.Lens' RemoveAllBackendsResponse (Prelude.Maybe Prelude.Text)
removeAllBackendsResponse_status = Lens.lens (\RemoveAllBackendsResponse' {status} -> status) (\s@RemoveAllBackendsResponse' {} a -> s {status = a} :: RemoveAllBackendsResponse)

-- | If the request fails, this error is returned.
removeAllBackendsResponse_error :: Lens.Lens' RemoveAllBackendsResponse (Prelude.Maybe Prelude.Text)
removeAllBackendsResponse_error = Lens.lens (\RemoveAllBackendsResponse' {error} -> error) (\s@RemoveAllBackendsResponse' {} a -> s {error = a} :: RemoveAllBackendsResponse)

-- | The name of the operation.
removeAllBackendsResponse_operation :: Lens.Lens' RemoveAllBackendsResponse (Prelude.Maybe Prelude.Text)
removeAllBackendsResponse_operation = Lens.lens (\RemoveAllBackendsResponse' {operation} -> operation) (\s@RemoveAllBackendsResponse' {} a -> s {operation = a} :: RemoveAllBackendsResponse)

-- | The app ID.
removeAllBackendsResponse_appId :: Lens.Lens' RemoveAllBackendsResponse (Prelude.Maybe Prelude.Text)
removeAllBackendsResponse_appId = Lens.lens (\RemoveAllBackendsResponse' {appId} -> appId) (\s@RemoveAllBackendsResponse' {} a -> s {appId = a} :: RemoveAllBackendsResponse)

-- | The response's http status code.
removeAllBackendsResponse_httpStatus :: Lens.Lens' RemoveAllBackendsResponse Prelude.Int
removeAllBackendsResponse_httpStatus = Lens.lens (\RemoveAllBackendsResponse' {httpStatus} -> httpStatus) (\s@RemoveAllBackendsResponse' {} a -> s {httpStatus = a} :: RemoveAllBackendsResponse)

instance Prelude.NFData RemoveAllBackendsResponse where
  rnf RemoveAllBackendsResponse' {..} =
    Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf httpStatus
