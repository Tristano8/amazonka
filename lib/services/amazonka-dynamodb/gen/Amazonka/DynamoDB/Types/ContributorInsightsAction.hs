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
-- Module      : Amazonka.DynamoDB.Types.ContributorInsightsAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.ContributorInsightsAction
  ( ContributorInsightsAction
      ( ..,
        ContributorInsightsAction_DISABLE,
        ContributorInsightsAction_ENABLE
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Internal
import qualified Amazonka.Prelude as Prelude

newtype ContributorInsightsAction = ContributorInsightsAction'
  { fromContributorInsightsAction ::
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

pattern ContributorInsightsAction_DISABLE :: ContributorInsightsAction
pattern ContributorInsightsAction_DISABLE = ContributorInsightsAction' "DISABLE"

pattern ContributorInsightsAction_ENABLE :: ContributorInsightsAction
pattern ContributorInsightsAction_ENABLE = ContributorInsightsAction' "ENABLE"

{-# COMPLETE
  ContributorInsightsAction_DISABLE,
  ContributorInsightsAction_ENABLE,
  ContributorInsightsAction'
  #-}
