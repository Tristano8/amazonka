{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBClusterRole
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.RDS.Types.DBClusterRole
  ( DBClusterRole (..)
  -- * Smart constructor
  , mkDBClusterRole
  -- * Lenses
  , dbcrFeatureName
  , dbcrRoleArn
  , dbcrStatus
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.
--
-- /See:/ 'mkDBClusterRole' smart constructor.
data DBClusterRole = DBClusterRole'
  { featureName :: Core.Maybe Core.Text
    -- ^ The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see 'DBEngineVersion' . 
  , roleArn :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.
  , status :: Core.Maybe Core.Text
    -- ^ Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:
--
--
--     * @ACTIVE@ - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.
--
--
--     * @PENDING@ - the IAM role ARN is being associated with the DB cluster.
--
--
--     * @INVALID@ - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.
--
--
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DBClusterRole' value with any optional fields omitted.
mkDBClusterRole
    :: DBClusterRole
mkDBClusterRole
  = DBClusterRole'{featureName = Core.Nothing,
                   roleArn = Core.Nothing, status = Core.Nothing}

-- | The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see 'DBEngineVersion' . 
--
-- /Note:/ Consider using 'featureName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbcrFeatureName :: Lens.Lens' DBClusterRole (Core.Maybe Core.Text)
dbcrFeatureName = Lens.field @"featureName"
{-# INLINEABLE dbcrFeatureName #-}
{-# DEPRECATED featureName "Use generic-lens or generic-optics with 'featureName' instead"  #-}

-- | The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbcrRoleArn :: Lens.Lens' DBClusterRole (Core.Maybe Core.Text)
dbcrRoleArn = Lens.field @"roleArn"
{-# INLINEABLE dbcrRoleArn #-}
{-# DEPRECATED roleArn "Use generic-lens or generic-optics with 'roleArn' instead"  #-}

-- | Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:
--
--
--     * @ACTIVE@ - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.
--
--
--     * @PENDING@ - the IAM role ARN is being associated with the DB cluster.
--
--
--     * @INVALID@ - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.
--
--
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbcrStatus :: Lens.Lens' DBClusterRole (Core.Maybe Core.Text)
dbcrStatus = Lens.field @"status"
{-# INLINEABLE dbcrStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

instance Core.FromXML DBClusterRole where
        parseXML x
          = DBClusterRole' Core.<$>
              (x Core..@? "FeatureName") Core.<*> x Core..@? "RoleArn" Core.<*>
                x Core..@? "Status"
