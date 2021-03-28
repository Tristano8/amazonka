{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.Owner
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.Owner
  ( Owner
    ( Owner'
    , OwnerCustomLambda
    , OwnerAws
    , fromOwner
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype Owner = Owner'{fromOwner :: Core.Text}
                  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                  Core.Generic)
                  deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                    Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON, Core.FromJSON,
                                    Core.ToXML, Core.FromXML, Core.ToText, Core.FromText,
                                    Core.ToByteString, Core.ToQuery, Core.ToHeader)

pattern OwnerCustomLambda :: Owner
pattern OwnerCustomLambda = Owner' "CUSTOM_LAMBDA"

pattern OwnerAws :: Owner
pattern OwnerAws = Owner' "AWS"

{-# COMPLETE 
  OwnerCustomLambda,

  OwnerAws,
  Owner'
  #-}
