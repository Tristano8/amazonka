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
-- Module      : Amazonka.IdentityStore.ListGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the attribute name and value of the group that you specified in
-- the search. We only support @DisplayName@ as a valid filter attribute
-- path currently, and filter is required. This API returns minimum
-- attributes, including @GroupId@ and group @DisplayName@ in the response.
module Amazonka.IdentityStore.ListGroups
  ( -- * Creating a Request
    ListGroups (..),
    newListGroups,

    -- * Request Lenses
    listGroups_filters,
    listGroups_nextToken,
    listGroups_maxResults,
    listGroups_identityStoreId,

    -- * Destructuring the Response
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * Response Lenses
    listGroupsResponse_nextToken,
    listGroupsResponse_httpStatus,
    listGroupsResponse_groups,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IdentityStore.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListGroups' smart constructor.
data ListGroups = ListGroups'
  { -- | A list of @Filter@ objects, which is used in the @ListUsers@ and
    -- @ListGroups@ request.
    filters :: Prelude.Maybe [Filter],
    -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request. This parameter
    -- is used in the @ListUsers@ and @ListGroups@ request to specify how many
    -- results to return in one page. The length limit is 50 characters.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The globally unique identifier for the identity store, such as
    -- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
    -- @1234567890@ is a randomly generated string that contains number and
    -- lower case letters. This value is generated at the time that a new
    -- identity store is created.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listGroups_filters' - A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ request.
--
-- 'nextToken', 'listGroups_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
--
-- 'maxResults', 'listGroups_maxResults' - The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ request to specify how many
-- results to return in one page. The length limit is 50 characters.
--
-- 'identityStoreId', 'listGroups_identityStoreId' - The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains number and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
newListGroups ::
  -- | 'identityStoreId'
  Prelude.Text ->
  ListGroups
newListGroups pIdentityStoreId_ =
  ListGroups'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      identityStoreId = pIdentityStoreId_
    }

-- | A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ request.
listGroups_filters :: Lens.Lens' ListGroups (Prelude.Maybe [Filter])
listGroups_filters = Lens.lens (\ListGroups' {filters} -> filters) (\s@ListGroups' {} a -> s {filters = a} :: ListGroups) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
listGroups_nextToken :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Text)
listGroups_nextToken = Lens.lens (\ListGroups' {nextToken} -> nextToken) (\s@ListGroups' {} a -> s {nextToken = a} :: ListGroups)

-- | The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ request to specify how many
-- results to return in one page. The length limit is 50 characters.
listGroups_maxResults :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Natural)
listGroups_maxResults = Lens.lens (\ListGroups' {maxResults} -> maxResults) (\s@ListGroups' {} a -> s {maxResults = a} :: ListGroups)

-- | The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains number and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
listGroups_identityStoreId :: Lens.Lens' ListGroups Prelude.Text
listGroups_identityStoreId = Lens.lens (\ListGroups' {identityStoreId} -> identityStoreId) (\s@ListGroups' {} a -> s {identityStoreId = a} :: ListGroups)

instance Core.AWSRequest ListGroups where
  type AWSResponse ListGroups = ListGroupsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Groups" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListGroups where
  hashWithSalt _salt ListGroups' {..} =
    _salt `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` identityStoreId

instance Prelude.NFData ListGroups where
  rnf ListGroups' {..} =
    Prelude.rnf filters
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf identityStoreId

instance Core.ToHeaders ListGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIdentityStore.ListGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListGroups where
  toJSON ListGroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("IdentityStoreId" Core..= identityStoreId)
          ]
      )

instance Core.ToPath ListGroups where
  toPath = Prelude.const "/"

instance Core.ToQuery ListGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it1 is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of @Group@ objects in the identity store.
    groups :: [Group]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupsResponse_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it1 is used in the API
-- request to search for the next page.
--
-- 'httpStatus', 'listGroupsResponse_httpStatus' - The response's http status code.
--
-- 'groups', 'listGroupsResponse_groups' - A list of @Group@ objects in the identity store.
newListGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGroupsResponse
newListGroupsResponse pHttpStatus_ =
  ListGroupsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      groups = Prelude.mempty
    }

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it1 is used in the API
-- request to search for the next page.
listGroupsResponse_nextToken :: Lens.Lens' ListGroupsResponse (Prelude.Maybe Prelude.Text)
listGroupsResponse_nextToken = Lens.lens (\ListGroupsResponse' {nextToken} -> nextToken) (\s@ListGroupsResponse' {} a -> s {nextToken = a} :: ListGroupsResponse)

-- | The response's http status code.
listGroupsResponse_httpStatus :: Lens.Lens' ListGroupsResponse Prelude.Int
listGroupsResponse_httpStatus = Lens.lens (\ListGroupsResponse' {httpStatus} -> httpStatus) (\s@ListGroupsResponse' {} a -> s {httpStatus = a} :: ListGroupsResponse)

-- | A list of @Group@ objects in the identity store.
listGroupsResponse_groups :: Lens.Lens' ListGroupsResponse [Group]
listGroupsResponse_groups = Lens.lens (\ListGroupsResponse' {groups} -> groups) (\s@ListGroupsResponse' {} a -> s {groups = a} :: ListGroupsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListGroupsResponse where
  rnf ListGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf groups
