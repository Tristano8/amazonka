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
-- Module      : Amazonka.SWF.Types.StartTimerFailedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.StartTimerFailedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.StartTimerFailedCause

-- | Provides the details of the @StartTimerFailed@ event.
--
-- /See:/ 'newStartTimerFailedEventAttributes' smart constructor.
data StartTimerFailedEventAttributes = StartTimerFailedEventAttributes'
  { -- | The timerId provided in the @StartTimer@ decision that failed.
    timerId :: Prelude.Text,
    -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: StartTimerFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the @StartTimer@ decision for this
    -- activity task. This information can be useful for diagnosing problems by
    -- tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartTimerFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timerId', 'startTimerFailedEventAttributes_timerId' - The timerId provided in the @StartTimer@ decision that failed.
--
-- 'cause', 'startTimerFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'startTimerFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @StartTimer@ decision for this
-- activity task. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
newStartTimerFailedEventAttributes ::
  -- | 'timerId'
  Prelude.Text ->
  -- | 'cause'
  StartTimerFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  StartTimerFailedEventAttributes
newStartTimerFailedEventAttributes
  pTimerId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    StartTimerFailedEventAttributes'
      { timerId =
          pTimerId_,
        cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The timerId provided in the @StartTimer@ decision that failed.
startTimerFailedEventAttributes_timerId :: Lens.Lens' StartTimerFailedEventAttributes Prelude.Text
startTimerFailedEventAttributes_timerId = Lens.lens (\StartTimerFailedEventAttributes' {timerId} -> timerId) (\s@StartTimerFailedEventAttributes' {} a -> s {timerId = a} :: StartTimerFailedEventAttributes)

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
startTimerFailedEventAttributes_cause :: Lens.Lens' StartTimerFailedEventAttributes StartTimerFailedCause
startTimerFailedEventAttributes_cause = Lens.lens (\StartTimerFailedEventAttributes' {cause} -> cause) (\s@StartTimerFailedEventAttributes' {} a -> s {cause = a} :: StartTimerFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @StartTimer@ decision for this
-- activity task. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
startTimerFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' StartTimerFailedEventAttributes Prelude.Integer
startTimerFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\StartTimerFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@StartTimerFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: StartTimerFailedEventAttributes)

instance
  Core.FromJSON
    StartTimerFailedEventAttributes
  where
  parseJSON =
    Core.withObject
      "StartTimerFailedEventAttributes"
      ( \x ->
          StartTimerFailedEventAttributes'
            Prelude.<$> (x Core..: "timerId")
            Prelude.<*> (x Core..: "cause")
            Prelude.<*> (x Core..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    StartTimerFailedEventAttributes

instance
  Prelude.NFData
    StartTimerFailedEventAttributes
