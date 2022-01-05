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
-- Module      : Amazonka.SESV2.GetDedicatedIps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the dedicated IP addresses that are associated with your Amazon Web
-- Services account.
module Amazonka.SESV2.GetDedicatedIps
  ( -- * Creating a Request
    GetDedicatedIps (..),
    newGetDedicatedIps,

    -- * Request Lenses
    getDedicatedIps_poolName,
    getDedicatedIps_nextToken,
    getDedicatedIps_pageSize,

    -- * Destructuring the Response
    GetDedicatedIpsResponse (..),
    newGetDedicatedIpsResponse,

    -- * Response Lenses
    getDedicatedIpsResponse_nextToken,
    getDedicatedIpsResponse_dedicatedIps,
    getDedicatedIpsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SESV2.Types

-- | A request to obtain more information about dedicated IP pools.
--
-- /See:/ 'newGetDedicatedIps' smart constructor.
data GetDedicatedIps = GetDedicatedIps'
  { -- | The name of the IP pool that the dedicated IP address is associated
    -- with.
    poolName :: Prelude.Maybe Prelude.Text,
    -- | A token returned from a previous call to @GetDedicatedIps@ to indicate
    -- the position of the dedicated IP pool in the list of IP pools.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of results to show in a single call to
    -- @GetDedicatedIpsRequest@. If the number of results is larger than the
    -- number you specified in this parameter, then the response includes a
    -- @NextToken@ element, which you can use to obtain additional results.
    pageSize :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDedicatedIps' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolName', 'getDedicatedIps_poolName' - The name of the IP pool that the dedicated IP address is associated
-- with.
--
-- 'nextToken', 'getDedicatedIps_nextToken' - A token returned from a previous call to @GetDedicatedIps@ to indicate
-- the position of the dedicated IP pool in the list of IP pools.
--
-- 'pageSize', 'getDedicatedIps_pageSize' - The number of results to show in a single call to
-- @GetDedicatedIpsRequest@. If the number of results is larger than the
-- number you specified in this parameter, then the response includes a
-- @NextToken@ element, which you can use to obtain additional results.
newGetDedicatedIps ::
  GetDedicatedIps
newGetDedicatedIps =
  GetDedicatedIps'
    { poolName = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      pageSize = Prelude.Nothing
    }

-- | The name of the IP pool that the dedicated IP address is associated
-- with.
getDedicatedIps_poolName :: Lens.Lens' GetDedicatedIps (Prelude.Maybe Prelude.Text)
getDedicatedIps_poolName = Lens.lens (\GetDedicatedIps' {poolName} -> poolName) (\s@GetDedicatedIps' {} a -> s {poolName = a} :: GetDedicatedIps)

-- | A token returned from a previous call to @GetDedicatedIps@ to indicate
-- the position of the dedicated IP pool in the list of IP pools.
getDedicatedIps_nextToken :: Lens.Lens' GetDedicatedIps (Prelude.Maybe Prelude.Text)
getDedicatedIps_nextToken = Lens.lens (\GetDedicatedIps' {nextToken} -> nextToken) (\s@GetDedicatedIps' {} a -> s {nextToken = a} :: GetDedicatedIps)

-- | The number of results to show in a single call to
-- @GetDedicatedIpsRequest@. If the number of results is larger than the
-- number you specified in this parameter, then the response includes a
-- @NextToken@ element, which you can use to obtain additional results.
getDedicatedIps_pageSize :: Lens.Lens' GetDedicatedIps (Prelude.Maybe Prelude.Int)
getDedicatedIps_pageSize = Lens.lens (\GetDedicatedIps' {pageSize} -> pageSize) (\s@GetDedicatedIps' {} a -> s {pageSize = a} :: GetDedicatedIps)

instance Core.AWSRequest GetDedicatedIps where
  type
    AWSResponse GetDedicatedIps =
      GetDedicatedIpsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDedicatedIpsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "DedicatedIps" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDedicatedIps where
  hashWithSalt _salt GetDedicatedIps' {..} =
    _salt `Prelude.hashWithSalt` poolName
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` pageSize

instance Prelude.NFData GetDedicatedIps where
  rnf GetDedicatedIps' {..} =
    Prelude.rnf poolName
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf pageSize

instance Core.ToHeaders GetDedicatedIps where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDedicatedIps where
  toPath = Prelude.const "/v2/email/dedicated-ips"

instance Core.ToQuery GetDedicatedIps where
  toQuery GetDedicatedIps' {..} =
    Prelude.mconcat
      [ "PoolName" Core.=: poolName,
        "NextToken" Core.=: nextToken,
        "PageSize" Core.=: pageSize
      ]

-- | Information about the dedicated IP addresses that are associated with
-- your Amazon Web Services account.
--
-- /See:/ 'newGetDedicatedIpsResponse' smart constructor.
data GetDedicatedIpsResponse = GetDedicatedIpsResponse'
  { -- | A token that indicates that there are additional dedicated IP addresses
    -- to list. To view additional addresses, issue another request to
    -- @GetDedicatedIps@, passing this token in the @NextToken@ parameter.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of dedicated IP addresses that are associated with your Amazon
    -- Web Services account.
    dedicatedIps :: Prelude.Maybe [DedicatedIp],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDedicatedIpsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDedicatedIpsResponse_nextToken' - A token that indicates that there are additional dedicated IP addresses
-- to list. To view additional addresses, issue another request to
-- @GetDedicatedIps@, passing this token in the @NextToken@ parameter.
--
-- 'dedicatedIps', 'getDedicatedIpsResponse_dedicatedIps' - A list of dedicated IP addresses that are associated with your Amazon
-- Web Services account.
--
-- 'httpStatus', 'getDedicatedIpsResponse_httpStatus' - The response's http status code.
newGetDedicatedIpsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDedicatedIpsResponse
newGetDedicatedIpsResponse pHttpStatus_ =
  GetDedicatedIpsResponse'
    { nextToken =
        Prelude.Nothing,
      dedicatedIps = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that indicates that there are additional dedicated IP addresses
-- to list. To view additional addresses, issue another request to
-- @GetDedicatedIps@, passing this token in the @NextToken@ parameter.
getDedicatedIpsResponse_nextToken :: Lens.Lens' GetDedicatedIpsResponse (Prelude.Maybe Prelude.Text)
getDedicatedIpsResponse_nextToken = Lens.lens (\GetDedicatedIpsResponse' {nextToken} -> nextToken) (\s@GetDedicatedIpsResponse' {} a -> s {nextToken = a} :: GetDedicatedIpsResponse)

-- | A list of dedicated IP addresses that are associated with your Amazon
-- Web Services account.
getDedicatedIpsResponse_dedicatedIps :: Lens.Lens' GetDedicatedIpsResponse (Prelude.Maybe [DedicatedIp])
getDedicatedIpsResponse_dedicatedIps = Lens.lens (\GetDedicatedIpsResponse' {dedicatedIps} -> dedicatedIps) (\s@GetDedicatedIpsResponse' {} a -> s {dedicatedIps = a} :: GetDedicatedIpsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getDedicatedIpsResponse_httpStatus :: Lens.Lens' GetDedicatedIpsResponse Prelude.Int
getDedicatedIpsResponse_httpStatus = Lens.lens (\GetDedicatedIpsResponse' {httpStatus} -> httpStatus) (\s@GetDedicatedIpsResponse' {} a -> s {httpStatus = a} :: GetDedicatedIpsResponse)

instance Prelude.NFData GetDedicatedIpsResponse where
  rnf GetDedicatedIpsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf dedicatedIps
      `Prelude.seq` Prelude.rnf httpStatus
