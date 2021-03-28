{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
  ( TransitGatewayMulitcastDomainAssociationState
    ( TransitGatewayMulitcastDomainAssociationState'
    , TransitGatewayMulitcastDomainAssociationStateAssociating
    , TransitGatewayMulitcastDomainAssociationStateAssociated
    , TransitGatewayMulitcastDomainAssociationStateDisassociating
    , TransitGatewayMulitcastDomainAssociationStateDisassociated
    , fromTransitGatewayMulitcastDomainAssociationState
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype TransitGatewayMulitcastDomainAssociationState = TransitGatewayMulitcastDomainAssociationState'{fromTransitGatewayMulitcastDomainAssociationState
                                                                                                       ::
                                                                                                       Core.Text}
                                                          deriving stock (Core.Eq, Core.Ord,
                                                                          Core.Read, Core.Show,
                                                                          Core.Generic)
                                                          deriving newtype (Core.IsString,
                                                                            Core.Hashable,
                                                                            Core.NFData,
                                                                            Core.ToJSONKey,
                                                                            Core.FromJSONKey,
                                                                            Core.ToJSON,
                                                                            Core.FromJSON,
                                                                            Core.ToXML,
                                                                            Core.FromXML,
                                                                            Core.ToText,
                                                                            Core.FromText,
                                                                            Core.ToByteString,
                                                                            Core.ToQuery,
                                                                            Core.ToHeader)

pattern TransitGatewayMulitcastDomainAssociationStateAssociating :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateAssociating = TransitGatewayMulitcastDomainAssociationState' "associating"

pattern TransitGatewayMulitcastDomainAssociationStateAssociated :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateAssociated = TransitGatewayMulitcastDomainAssociationState' "associated"

pattern TransitGatewayMulitcastDomainAssociationStateDisassociating :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateDisassociating = TransitGatewayMulitcastDomainAssociationState' "disassociating"

pattern TransitGatewayMulitcastDomainAssociationStateDisassociated :: TransitGatewayMulitcastDomainAssociationState
pattern TransitGatewayMulitcastDomainAssociationStateDisassociated = TransitGatewayMulitcastDomainAssociationState' "disassociated"

{-# COMPLETE 
  TransitGatewayMulitcastDomainAssociationStateAssociating,

  TransitGatewayMulitcastDomainAssociationStateAssociated,

  TransitGatewayMulitcastDomainAssociationStateDisassociating,

  TransitGatewayMulitcastDomainAssociationStateDisassociated,
  TransitGatewayMulitcastDomainAssociationState'
  #-}
