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
-- Module      : Amazonka.ChimeSDKMessaging.BatchCreateChannelMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a specified number of users to a channel.
module Amazonka.ChimeSDKMessaging.BatchCreateChannelMembership
  ( -- * Creating a Request
    BatchCreateChannelMembership (..),
    newBatchCreateChannelMembership,

    -- * Request Lenses
    batchCreateChannelMembership_type,
    batchCreateChannelMembership_channelArn,
    batchCreateChannelMembership_memberArns,
    batchCreateChannelMembership_chimeBearer,

    -- * Destructuring the Response
    BatchCreateChannelMembershipResponse (..),
    newBatchCreateChannelMembershipResponse,

    -- * Response Lenses
    batchCreateChannelMembershipResponse_errors,
    batchCreateChannelMembershipResponse_batchChannelMemberships,
    batchCreateChannelMembershipResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchCreateChannelMembership' smart constructor.
data BatchCreateChannelMembership = BatchCreateChannelMembership'
  { -- | The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
    -- are always returned as part of @ListChannelMemberships@. Hidden members
    -- are only returned if the type filter in @ListChannelMemberships@ equals
    -- @HIDDEN@. Otherwise hidden members are not returned. This is only
    -- supported by moderators.
    type' :: Prelude.Maybe ChannelMembershipType,
    -- | The ARN of the channel to which you\'re adding users.
    channelArn :: Prelude.Text,
    -- | The ARNs of the members you want to add to the channel.
    memberArns :: Prelude.NonEmpty Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateChannelMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'batchCreateChannelMembership_type' - The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
-- are always returned as part of @ListChannelMemberships@. Hidden members
-- are only returned if the type filter in @ListChannelMemberships@ equals
-- @HIDDEN@. Otherwise hidden members are not returned. This is only
-- supported by moderators.
--
-- 'channelArn', 'batchCreateChannelMembership_channelArn' - The ARN of the channel to which you\'re adding users.
--
-- 'memberArns', 'batchCreateChannelMembership_memberArns' - The ARNs of the members you want to add to the channel.
--
-- 'chimeBearer', 'batchCreateChannelMembership_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newBatchCreateChannelMembership ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'memberArns'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  BatchCreateChannelMembership
newBatchCreateChannelMembership
  pChannelArn_
  pMemberArns_
  pChimeBearer_ =
    BatchCreateChannelMembership'
      { type' =
          Prelude.Nothing,
        channelArn = pChannelArn_,
        memberArns = Lens.coerced Lens.# pMemberArns_,
        chimeBearer = pChimeBearer_
      }

-- | The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
-- are always returned as part of @ListChannelMemberships@. Hidden members
-- are only returned if the type filter in @ListChannelMemberships@ equals
-- @HIDDEN@. Otherwise hidden members are not returned. This is only
-- supported by moderators.
batchCreateChannelMembership_type :: Lens.Lens' BatchCreateChannelMembership (Prelude.Maybe ChannelMembershipType)
batchCreateChannelMembership_type = Lens.lens (\BatchCreateChannelMembership' {type'} -> type') (\s@BatchCreateChannelMembership' {} a -> s {type' = a} :: BatchCreateChannelMembership)

-- | The ARN of the channel to which you\'re adding users.
batchCreateChannelMembership_channelArn :: Lens.Lens' BatchCreateChannelMembership Prelude.Text
batchCreateChannelMembership_channelArn = Lens.lens (\BatchCreateChannelMembership' {channelArn} -> channelArn) (\s@BatchCreateChannelMembership' {} a -> s {channelArn = a} :: BatchCreateChannelMembership)

-- | The ARNs of the members you want to add to the channel.
batchCreateChannelMembership_memberArns :: Lens.Lens' BatchCreateChannelMembership (Prelude.NonEmpty Prelude.Text)
batchCreateChannelMembership_memberArns = Lens.lens (\BatchCreateChannelMembership' {memberArns} -> memberArns) (\s@BatchCreateChannelMembership' {} a -> s {memberArns = a} :: BatchCreateChannelMembership) Prelude.. Lens.coerced

-- | The @AppInstanceUserArn@ of the user that makes the API call.
batchCreateChannelMembership_chimeBearer :: Lens.Lens' BatchCreateChannelMembership Prelude.Text
batchCreateChannelMembership_chimeBearer = Lens.lens (\BatchCreateChannelMembership' {chimeBearer} -> chimeBearer) (\s@BatchCreateChannelMembership' {} a -> s {chimeBearer = a} :: BatchCreateChannelMembership)

instance Core.AWSRequest BatchCreateChannelMembership where
  type
    AWSResponse BatchCreateChannelMembership =
      BatchCreateChannelMembershipResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchCreateChannelMembershipResponse'
            Prelude.<$> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "BatchChannelMemberships")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchCreateChannelMembership
  where
  hashWithSalt _salt BatchCreateChannelMembership' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` memberArns
      `Prelude.hashWithSalt` chimeBearer

instance Prelude.NFData BatchCreateChannelMembership where
  rnf BatchCreateChannelMembership' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf memberArns
      `Prelude.seq` Prelude.rnf chimeBearer

instance Core.ToHeaders BatchCreateChannelMembership where
  toHeaders BatchCreateChannelMembership' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToJSON BatchCreateChannelMembership where
  toJSON BatchCreateChannelMembership' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            Prelude.Just ("MemberArns" Core..= memberArns)
          ]
      )

instance Core.ToPath BatchCreateChannelMembership where
  toPath BatchCreateChannelMembership' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn, "/memberships"]

instance Core.ToQuery BatchCreateChannelMembership where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=batch-create"])

-- | /See:/ 'newBatchCreateChannelMembershipResponse' smart constructor.
data BatchCreateChannelMembershipResponse = BatchCreateChannelMembershipResponse'
  { -- | If the action fails for one or more of the memberships in the request, a
    -- list of the memberships is returned, along with error codes and error
    -- messages.
    errors :: Prelude.Maybe [BatchCreateChannelMembershipError],
    -- | The list of channel memberships in the response.
    batchChannelMemberships :: Prelude.Maybe BatchChannelMemberships,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateChannelMembershipResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchCreateChannelMembershipResponse_errors' - If the action fails for one or more of the memberships in the request, a
-- list of the memberships is returned, along with error codes and error
-- messages.
--
-- 'batchChannelMemberships', 'batchCreateChannelMembershipResponse_batchChannelMemberships' - The list of channel memberships in the response.
--
-- 'httpStatus', 'batchCreateChannelMembershipResponse_httpStatus' - The response's http status code.
newBatchCreateChannelMembershipResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchCreateChannelMembershipResponse
newBatchCreateChannelMembershipResponse pHttpStatus_ =
  BatchCreateChannelMembershipResponse'
    { errors =
        Prelude.Nothing,
      batchChannelMemberships =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the action fails for one or more of the memberships in the request, a
-- list of the memberships is returned, along with error codes and error
-- messages.
batchCreateChannelMembershipResponse_errors :: Lens.Lens' BatchCreateChannelMembershipResponse (Prelude.Maybe [BatchCreateChannelMembershipError])
batchCreateChannelMembershipResponse_errors = Lens.lens (\BatchCreateChannelMembershipResponse' {errors} -> errors) (\s@BatchCreateChannelMembershipResponse' {} a -> s {errors = a} :: BatchCreateChannelMembershipResponse) Prelude.. Lens.mapping Lens.coerced

-- | The list of channel memberships in the response.
batchCreateChannelMembershipResponse_batchChannelMemberships :: Lens.Lens' BatchCreateChannelMembershipResponse (Prelude.Maybe BatchChannelMemberships)
batchCreateChannelMembershipResponse_batchChannelMemberships = Lens.lens (\BatchCreateChannelMembershipResponse' {batchChannelMemberships} -> batchChannelMemberships) (\s@BatchCreateChannelMembershipResponse' {} a -> s {batchChannelMemberships = a} :: BatchCreateChannelMembershipResponse)

-- | The response's http status code.
batchCreateChannelMembershipResponse_httpStatus :: Lens.Lens' BatchCreateChannelMembershipResponse Prelude.Int
batchCreateChannelMembershipResponse_httpStatus = Lens.lens (\BatchCreateChannelMembershipResponse' {httpStatus} -> httpStatus) (\s@BatchCreateChannelMembershipResponse' {} a -> s {httpStatus = a} :: BatchCreateChannelMembershipResponse)

instance
  Prelude.NFData
    BatchCreateChannelMembershipResponse
  where
  rnf BatchCreateChannelMembershipResponse' {..} =
    Prelude.rnf errors
      `Prelude.seq` Prelude.rnf batchChannelMemberships
      `Prelude.seq` Prelude.rnf httpStatus
