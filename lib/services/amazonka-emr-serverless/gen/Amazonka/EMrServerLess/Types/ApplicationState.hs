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
-- Module      : Amazonka.EMrServerLess.Types.ApplicationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMrServerLess.Types.ApplicationState
  ( ApplicationState
      ( ..,
        ApplicationState_CREATED,
        ApplicationState_CREATING,
        ApplicationState_STARTED,
        ApplicationState_STARTING,
        ApplicationState_STOPPED,
        ApplicationState_STOPPING,
        ApplicationState_TERMINATED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ApplicationState = ApplicationState'
  { fromApplicationState ::
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

pattern ApplicationState_CREATED :: ApplicationState
pattern ApplicationState_CREATED = ApplicationState' "CREATED"

pattern ApplicationState_CREATING :: ApplicationState
pattern ApplicationState_CREATING = ApplicationState' "CREATING"

pattern ApplicationState_STARTED :: ApplicationState
pattern ApplicationState_STARTED = ApplicationState' "STARTED"

pattern ApplicationState_STARTING :: ApplicationState
pattern ApplicationState_STARTING = ApplicationState' "STARTING"

pattern ApplicationState_STOPPED :: ApplicationState
pattern ApplicationState_STOPPED = ApplicationState' "STOPPED"

pattern ApplicationState_STOPPING :: ApplicationState
pattern ApplicationState_STOPPING = ApplicationState' "STOPPING"

pattern ApplicationState_TERMINATED :: ApplicationState
pattern ApplicationState_TERMINATED = ApplicationState' "TERMINATED"

{-# COMPLETE
  ApplicationState_CREATED,
  ApplicationState_CREATING,
  ApplicationState_STARTED,
  ApplicationState_STARTING,
  ApplicationState_STOPPED,
  ApplicationState_STOPPING,
  ApplicationState_TERMINATED,
  ApplicationState'
  #-}
