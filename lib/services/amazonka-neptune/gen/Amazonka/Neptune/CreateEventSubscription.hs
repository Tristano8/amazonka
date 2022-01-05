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
-- Module      : Amazonka.Neptune.CreateEventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an event notification subscription. This action requires a topic
-- ARN (Amazon Resource Name) created by either the Neptune console, the
-- SNS console, or the SNS API. To obtain an ARN with SNS, you must create
-- a topic in Amazon SNS and subscribe to the topic. The ARN is displayed
-- in the SNS console.
--
-- You can specify the type of source (SourceType) you want to be notified
-- of, provide a list of Neptune sources (SourceIds) that triggers the
-- events, and provide a list of event categories (EventCategories) for
-- events you want to be notified of. For example, you can specify
-- SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and
-- EventCategories = Availability, Backup.
--
-- If you specify both the SourceType and SourceIds, such as SourceType =
-- db-instance and SourceIdentifier = myDBInstance1, you are notified of
-- all the db-instance events for the specified source. If you specify a
-- SourceType but do not specify a SourceIdentifier, you receive notice of
-- the events for that source type for all your Neptune sources. If you do
-- not specify either the SourceType nor the SourceIdentifier, you are
-- notified of events generated from all Neptune sources belonging to your
-- customer account.
module Amazonka.Neptune.CreateEventSubscription
  ( -- * Creating a Request
    CreateEventSubscription (..),
    newCreateEventSubscription,

    -- * Request Lenses
    createEventSubscription_enabled,
    createEventSubscription_sourceType,
    createEventSubscription_eventCategories,
    createEventSubscription_sourceIds,
    createEventSubscription_tags,
    createEventSubscription_subscriptionName,
    createEventSubscription_snsTopicArn,

    -- * Destructuring the Response
    CreateEventSubscriptionResponse (..),
    newCreateEventSubscriptionResponse,

    -- * Response Lenses
    createEventSubscriptionResponse_eventSubscription,
    createEventSubscriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Neptune.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateEventSubscription' smart constructor.
data CreateEventSubscription = CreateEventSubscription'
  { -- | A Boolean value; set to __true__ to activate the subscription, set to
    -- __false__ to create the subscription but not active it.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The type of source that is generating the events. For example, if you
    -- want to be notified of events generated by a DB instance, you would set
    -- this parameter to db-instance. if this value is not specified, all
    -- events are returned.
    --
    -- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ |
    -- @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | A list of event categories for a SourceType that you want to subscribe
    -- to. You can see a list of the categories for a given SourceType by using
    -- the __DescribeEventCategories__ action.
    eventCategories :: Prelude.Maybe [Prelude.Text],
    -- | The list of identifiers of the event sources for which events are
    -- returned. If not specified, then all sources are included in the
    -- response. An identifier must begin with a letter and must contain only
    -- ASCII letters, digits, and hyphens; it can\'t end with a hyphen or
    -- contain two consecutive hyphens.
    --
    -- Constraints:
    --
    -- -   If SourceIds are supplied, SourceType must also be provided.
    --
    -- -   If the source type is a DB instance, then a @DBInstanceIdentifier@
    --     must be supplied.
    --
    -- -   If the source type is a DB security group, a @DBSecurityGroupName@
    --     must be supplied.
    --
    -- -   If the source type is a DB parameter group, a @DBParameterGroupName@
    --     must be supplied.
    --
    -- -   If the source type is a DB snapshot, a @DBSnapshotIdentifier@ must
    --     be supplied.
    sourceIds :: Prelude.Maybe [Prelude.Text],
    -- | The tags to be applied to the new event subscription.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the subscription.
    --
    -- Constraints: The name must be less than 255 characters.
    subscriptionName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the SNS topic created for event
    -- notification. The ARN is created by Amazon SNS when you create a topic
    -- and subscribe to it.
    snsTopicArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEventSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'createEventSubscription_enabled' - A Boolean value; set to __true__ to activate the subscription, set to
-- __false__ to create the subscription but not active it.
--
-- 'sourceType', 'createEventSubscription_sourceType' - The type of source that is generating the events. For example, if you
-- want to be notified of events generated by a DB instance, you would set
-- this parameter to db-instance. if this value is not specified, all
-- events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ |
-- @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
--
-- 'eventCategories', 'createEventSubscription_eventCategories' - A list of event categories for a SourceType that you want to subscribe
-- to. You can see a list of the categories for a given SourceType by using
-- the __DescribeEventCategories__ action.
--
-- 'sourceIds', 'createEventSubscription_sourceIds' - The list of identifiers of the event sources for which events are
-- returned. If not specified, then all sources are included in the
-- response. An identifier must begin with a letter and must contain only
-- ASCII letters, digits, and hyphens; it can\'t end with a hyphen or
-- contain two consecutive hyphens.
--
-- Constraints:
--
-- -   If SourceIds are supplied, SourceType must also be provided.
--
-- -   If the source type is a DB instance, then a @DBInstanceIdentifier@
--     must be supplied.
--
-- -   If the source type is a DB security group, a @DBSecurityGroupName@
--     must be supplied.
--
-- -   If the source type is a DB parameter group, a @DBParameterGroupName@
--     must be supplied.
--
-- -   If the source type is a DB snapshot, a @DBSnapshotIdentifier@ must
--     be supplied.
--
-- 'tags', 'createEventSubscription_tags' - The tags to be applied to the new event subscription.
--
-- 'subscriptionName', 'createEventSubscription_subscriptionName' - The name of the subscription.
--
-- Constraints: The name must be less than 255 characters.
--
-- 'snsTopicArn', 'createEventSubscription_snsTopicArn' - The Amazon Resource Name (ARN) of the SNS topic created for event
-- notification. The ARN is created by Amazon SNS when you create a topic
-- and subscribe to it.
newCreateEventSubscription ::
  -- | 'subscriptionName'
  Prelude.Text ->
  -- | 'snsTopicArn'
  Prelude.Text ->
  CreateEventSubscription
newCreateEventSubscription
  pSubscriptionName_
  pSnsTopicArn_ =
    CreateEventSubscription'
      { enabled = Prelude.Nothing,
        sourceType = Prelude.Nothing,
        eventCategories = Prelude.Nothing,
        sourceIds = Prelude.Nothing,
        tags = Prelude.Nothing,
        subscriptionName = pSubscriptionName_,
        snsTopicArn = pSnsTopicArn_
      }

-- | A Boolean value; set to __true__ to activate the subscription, set to
-- __false__ to create the subscription but not active it.
createEventSubscription_enabled :: Lens.Lens' CreateEventSubscription (Prelude.Maybe Prelude.Bool)
createEventSubscription_enabled = Lens.lens (\CreateEventSubscription' {enabled} -> enabled) (\s@CreateEventSubscription' {} a -> s {enabled = a} :: CreateEventSubscription)

-- | The type of source that is generating the events. For example, if you
-- want to be notified of events generated by a DB instance, you would set
-- this parameter to db-instance. if this value is not specified, all
-- events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ |
-- @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
createEventSubscription_sourceType :: Lens.Lens' CreateEventSubscription (Prelude.Maybe Prelude.Text)
createEventSubscription_sourceType = Lens.lens (\CreateEventSubscription' {sourceType} -> sourceType) (\s@CreateEventSubscription' {} a -> s {sourceType = a} :: CreateEventSubscription)

-- | A list of event categories for a SourceType that you want to subscribe
-- to. You can see a list of the categories for a given SourceType by using
-- the __DescribeEventCategories__ action.
createEventSubscription_eventCategories :: Lens.Lens' CreateEventSubscription (Prelude.Maybe [Prelude.Text])
createEventSubscription_eventCategories = Lens.lens (\CreateEventSubscription' {eventCategories} -> eventCategories) (\s@CreateEventSubscription' {} a -> s {eventCategories = a} :: CreateEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The list of identifiers of the event sources for which events are
-- returned. If not specified, then all sources are included in the
-- response. An identifier must begin with a letter and must contain only
-- ASCII letters, digits, and hyphens; it can\'t end with a hyphen or
-- contain two consecutive hyphens.
--
-- Constraints:
--
-- -   If SourceIds are supplied, SourceType must also be provided.
--
-- -   If the source type is a DB instance, then a @DBInstanceIdentifier@
--     must be supplied.
--
-- -   If the source type is a DB security group, a @DBSecurityGroupName@
--     must be supplied.
--
-- -   If the source type is a DB parameter group, a @DBParameterGroupName@
--     must be supplied.
--
-- -   If the source type is a DB snapshot, a @DBSnapshotIdentifier@ must
--     be supplied.
createEventSubscription_sourceIds :: Lens.Lens' CreateEventSubscription (Prelude.Maybe [Prelude.Text])
createEventSubscription_sourceIds = Lens.lens (\CreateEventSubscription' {sourceIds} -> sourceIds) (\s@CreateEventSubscription' {} a -> s {sourceIds = a} :: CreateEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The tags to be applied to the new event subscription.
createEventSubscription_tags :: Lens.Lens' CreateEventSubscription (Prelude.Maybe [Tag])
createEventSubscription_tags = Lens.lens (\CreateEventSubscription' {tags} -> tags) (\s@CreateEventSubscription' {} a -> s {tags = a} :: CreateEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The name of the subscription.
--
-- Constraints: The name must be less than 255 characters.
createEventSubscription_subscriptionName :: Lens.Lens' CreateEventSubscription Prelude.Text
createEventSubscription_subscriptionName = Lens.lens (\CreateEventSubscription' {subscriptionName} -> subscriptionName) (\s@CreateEventSubscription' {} a -> s {subscriptionName = a} :: CreateEventSubscription)

-- | The Amazon Resource Name (ARN) of the SNS topic created for event
-- notification. The ARN is created by Amazon SNS when you create a topic
-- and subscribe to it.
createEventSubscription_snsTopicArn :: Lens.Lens' CreateEventSubscription Prelude.Text
createEventSubscription_snsTopicArn = Lens.lens (\CreateEventSubscription' {snsTopicArn} -> snsTopicArn) (\s@CreateEventSubscription' {} a -> s {snsTopicArn = a} :: CreateEventSubscription)

instance Core.AWSRequest CreateEventSubscription where
  type
    AWSResponse CreateEventSubscription =
      CreateEventSubscriptionResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateEventSubscriptionResult"
      ( \s h x ->
          CreateEventSubscriptionResponse'
            Prelude.<$> (x Core..@? "EventSubscription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateEventSubscription where
  hashWithSalt _salt CreateEventSubscription' {..} =
    _salt `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` eventCategories
      `Prelude.hashWithSalt` sourceIds
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` subscriptionName
      `Prelude.hashWithSalt` snsTopicArn

instance Prelude.NFData CreateEventSubscription where
  rnf CreateEventSubscription' {..} =
    Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf eventCategories
      `Prelude.seq` Prelude.rnf sourceIds
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf subscriptionName
      `Prelude.seq` Prelude.rnf snsTopicArn

instance Core.ToHeaders CreateEventSubscription where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateEventSubscription where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateEventSubscription where
  toQuery CreateEventSubscription' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateEventSubscription" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Enabled" Core.=: enabled,
        "SourceType" Core.=: sourceType,
        "EventCategories"
          Core.=: Core.toQuery
            ( Core.toQueryList "EventCategory"
                Prelude.<$> eventCategories
            ),
        "SourceIds"
          Core.=: Core.toQuery
            (Core.toQueryList "SourceId" Prelude.<$> sourceIds),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "SubscriptionName" Core.=: subscriptionName,
        "SnsTopicArn" Core.=: snsTopicArn
      ]

-- | /See:/ 'newCreateEventSubscriptionResponse' smart constructor.
data CreateEventSubscriptionResponse = CreateEventSubscriptionResponse'
  { eventSubscription :: Prelude.Maybe EventSubscription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEventSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventSubscription', 'createEventSubscriptionResponse_eventSubscription' - Undocumented member.
--
-- 'httpStatus', 'createEventSubscriptionResponse_httpStatus' - The response's http status code.
newCreateEventSubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateEventSubscriptionResponse
newCreateEventSubscriptionResponse pHttpStatus_ =
  CreateEventSubscriptionResponse'
    { eventSubscription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createEventSubscriptionResponse_eventSubscription :: Lens.Lens' CreateEventSubscriptionResponse (Prelude.Maybe EventSubscription)
createEventSubscriptionResponse_eventSubscription = Lens.lens (\CreateEventSubscriptionResponse' {eventSubscription} -> eventSubscription) (\s@CreateEventSubscriptionResponse' {} a -> s {eventSubscription = a} :: CreateEventSubscriptionResponse)

-- | The response's http status code.
createEventSubscriptionResponse_httpStatus :: Lens.Lens' CreateEventSubscriptionResponse Prelude.Int
createEventSubscriptionResponse_httpStatus = Lens.lens (\CreateEventSubscriptionResponse' {httpStatus} -> httpStatus) (\s@CreateEventSubscriptionResponse' {} a -> s {httpStatus = a} :: CreateEventSubscriptionResponse)

instance
  Prelude.NFData
    CreateEventSubscriptionResponse
  where
  rnf CreateEventSubscriptionResponse' {..} =
    Prelude.rnf eventSubscription
      `Prelude.seq` Prelude.rnf httpStatus
