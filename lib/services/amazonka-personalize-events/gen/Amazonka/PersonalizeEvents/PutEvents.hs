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
-- Module      : Amazonka.PersonalizeEvents.PutEvents
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Records user interaction event data. For more information see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html Recording Events>.
module Amazonka.PersonalizeEvents.PutEvents
  ( -- * Creating a Request
    PutEvents (..),
    newPutEvents,

    -- * Request Lenses
    putEvents_userId,
    putEvents_trackingId,
    putEvents_sessionId,
    putEvents_eventList,

    -- * Destructuring the Response
    PutEventsResponse (..),
    newPutEventsResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.PersonalizeEvents.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutEvents' smart constructor.
data PutEvents = PutEvents'
  { -- | The user associated with the event.
    userId :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The tracking ID for the event. The ID is generated by a call to the
    -- <https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html CreateEventTracker>
    -- API.
    trackingId :: Prelude.Text,
    -- | The session ID associated with the user\'s visit. Your application
    -- generates the sessionId when a user first visits your website or uses
    -- your application. Amazon Personalize uses the sessionId to associate
    -- events with the user before they log in. For more information, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html Recording Events>.
    sessionId :: Prelude.Text,
    -- | A list of event data from the session.
    eventList :: Prelude.NonEmpty (Data.Sensitive Event)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userId', 'putEvents_userId' - The user associated with the event.
--
-- 'trackingId', 'putEvents_trackingId' - The tracking ID for the event. The ID is generated by a call to the
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html CreateEventTracker>
-- API.
--
-- 'sessionId', 'putEvents_sessionId' - The session ID associated with the user\'s visit. Your application
-- generates the sessionId when a user first visits your website or uses
-- your application. Amazon Personalize uses the sessionId to associate
-- events with the user before they log in. For more information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html Recording Events>.
--
-- 'eventList', 'putEvents_eventList' - A list of event data from the session.
newPutEvents ::
  -- | 'trackingId'
  Prelude.Text ->
  -- | 'sessionId'
  Prelude.Text ->
  -- | 'eventList'
  Prelude.NonEmpty Event ->
  PutEvents
newPutEvents pTrackingId_ pSessionId_ pEventList_ =
  PutEvents'
    { userId = Prelude.Nothing,
      trackingId = pTrackingId_,
      sessionId = pSessionId_,
      eventList = Lens.coerced Lens.# pEventList_
    }

-- | The user associated with the event.
putEvents_userId :: Lens.Lens' PutEvents (Prelude.Maybe Prelude.Text)
putEvents_userId = Lens.lens (\PutEvents' {userId} -> userId) (\s@PutEvents' {} a -> s {userId = a} :: PutEvents) Prelude.. Lens.mapping Data._Sensitive

-- | The tracking ID for the event. The ID is generated by a call to the
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html CreateEventTracker>
-- API.
putEvents_trackingId :: Lens.Lens' PutEvents Prelude.Text
putEvents_trackingId = Lens.lens (\PutEvents' {trackingId} -> trackingId) (\s@PutEvents' {} a -> s {trackingId = a} :: PutEvents)

-- | The session ID associated with the user\'s visit. Your application
-- generates the sessionId when a user first visits your website or uses
-- your application. Amazon Personalize uses the sessionId to associate
-- events with the user before they log in. For more information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html Recording Events>.
putEvents_sessionId :: Lens.Lens' PutEvents Prelude.Text
putEvents_sessionId = Lens.lens (\PutEvents' {sessionId} -> sessionId) (\s@PutEvents' {} a -> s {sessionId = a} :: PutEvents)

-- | A list of event data from the session.
putEvents_eventList :: Lens.Lens' PutEvents (Prelude.NonEmpty Event)
putEvents_eventList = Lens.lens (\PutEvents' {eventList} -> eventList) (\s@PutEvents' {} a -> s {eventList = a} :: PutEvents) Prelude.. Lens.coerced

instance Core.AWSRequest PutEvents where
  type AWSResponse PutEvents = PutEventsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response = Response.receiveNull PutEventsResponse'

instance Prelude.Hashable PutEvents where
  hashWithSalt _salt PutEvents' {..} =
    _salt
      `Prelude.hashWithSalt` userId
      `Prelude.hashWithSalt` trackingId
      `Prelude.hashWithSalt` sessionId
      `Prelude.hashWithSalt` eventList

instance Prelude.NFData PutEvents where
  rnf PutEvents' {..} =
    Prelude.rnf userId `Prelude.seq`
      Prelude.rnf trackingId `Prelude.seq`
        Prelude.rnf sessionId `Prelude.seq`
          Prelude.rnf eventList

instance Data.ToHeaders PutEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON PutEvents where
  toJSON PutEvents' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("userId" Data..=) Prelude.<$> userId,
            Prelude.Just ("trackingId" Data..= trackingId),
            Prelude.Just ("sessionId" Data..= sessionId),
            Prelude.Just ("eventList" Data..= eventList)
          ]
      )

instance Data.ToPath PutEvents where
  toPath = Prelude.const "/events"

instance Data.ToQuery PutEvents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutEventsResponse' smart constructor.
data PutEventsResponse = PutEventsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutEventsResponse ::
  PutEventsResponse
newPutEventsResponse = PutEventsResponse'

instance Prelude.NFData PutEventsResponse where
  rnf _ = ()
