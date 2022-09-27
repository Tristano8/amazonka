{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMrServerLess.Types.JobRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMrServerLess.Types.JobRunState
  ( JobRunState
      ( ..,
        JobRunState_CANCELLED,
        JobRunState_CANCELLING,
        JobRunState_FAILED,
        JobRunState_PENDING,
        JobRunState_RUNNING,
        JobRunState_SCHEDULED,
        JobRunState_SUBMITTED,
        JobRunState_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype JobRunState = JobRunState'
  { fromJobRunState ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern JobRunState_CANCELLED :: JobRunState
pattern JobRunState_CANCELLED = JobRunState' "CANCELLED"

pattern JobRunState_CANCELLING :: JobRunState
pattern JobRunState_CANCELLING = JobRunState' "CANCELLING"

pattern JobRunState_FAILED :: JobRunState
pattern JobRunState_FAILED = JobRunState' "FAILED"

pattern JobRunState_PENDING :: JobRunState
pattern JobRunState_PENDING = JobRunState' "PENDING"

pattern JobRunState_RUNNING :: JobRunState
pattern JobRunState_RUNNING = JobRunState' "RUNNING"

pattern JobRunState_SCHEDULED :: JobRunState
pattern JobRunState_SCHEDULED = JobRunState' "SCHEDULED"

pattern JobRunState_SUBMITTED :: JobRunState
pattern JobRunState_SUBMITTED = JobRunState' "SUBMITTED"

pattern JobRunState_SUCCESS :: JobRunState
pattern JobRunState_SUCCESS = JobRunState' "SUCCESS"

{-# COMPLETE
  JobRunState_CANCELLED,
  JobRunState_CANCELLING,
  JobRunState_FAILED,
  JobRunState_PENDING,
  JobRunState_RUNNING,
  JobRunState_SCHEDULED,
  JobRunState_SUBMITTED,
  JobRunState_SUCCESS,
  JobRunState'
  #-}
