{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SubnetAssociation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.SubnetAssociation
  ( SubnetAssociation (..)
  -- * Smart constructor
  , mkSubnetAssociation
  -- * Lenses
  , saState
  , saSubnetId
  ) where

import qualified Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the subnet association with the transit gateway multicast domain.
--
-- /See:/ 'mkSubnetAssociation' smart constructor.
data SubnetAssociation = SubnetAssociation'
  { state :: Core.Maybe Types.TransitGatewayMulitcastDomainAssociationState
    -- ^ The state of the subnet association.
  , subnetId :: Core.Maybe Core.Text
    -- ^ The ID of the subnet.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SubnetAssociation' value with any optional fields omitted.
mkSubnetAssociation
    :: SubnetAssociation
mkSubnetAssociation
  = SubnetAssociation'{state = Core.Nothing, subnetId = Core.Nothing}

-- | The state of the subnet association.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saState :: Lens.Lens' SubnetAssociation (Core.Maybe Types.TransitGatewayMulitcastDomainAssociationState)
saState = Lens.field @"state"
{-# INLINEABLE saState #-}
{-# DEPRECATED state "Use generic-lens or generic-optics with 'state' instead"  #-}

-- | The ID of the subnet.
--
-- /Note:/ Consider using 'subnetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saSubnetId :: Lens.Lens' SubnetAssociation (Core.Maybe Core.Text)
saSubnetId = Lens.field @"subnetId"
{-# INLINEABLE saSubnetId #-}
{-# DEPRECATED subnetId "Use generic-lens or generic-optics with 'subnetId' instead"  #-}

instance Core.FromXML SubnetAssociation where
        parseXML x
          = SubnetAssociation' Core.<$>
              (x Core..@? "state") Core.<*> x Core..@? "subnetId"
