{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.DeleteBackup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see 'RestoreBackup' .
module Network.AWS.CloudHSMv2.DeleteBackup
    (
    -- * Creating a request
      DeleteBackup (..)
    , mkDeleteBackup
    -- ** Request lenses
    , dbBackupId

    -- * Destructuring the response
    , DeleteBackupResponse (..)
    , mkDeleteBackupResponse
    -- ** Response lenses
    , dbrrsBackup
    , dbrrsResponseStatus
    ) where

import qualified Network.AWS.CloudHSMv2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteBackup' smart constructor.
newtype DeleteBackup = DeleteBackup'
  { backupId :: Types.BackupId
    -- ^ The ID of the backup to be deleted. To find the ID of a backup, use the 'DescribeBackups' operation.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteBackup' value with any optional fields omitted.
mkDeleteBackup
    :: Types.BackupId -- ^ 'backupId'
    -> DeleteBackup
mkDeleteBackup backupId = DeleteBackup'{backupId}

-- | The ID of the backup to be deleted. To find the ID of a backup, use the 'DescribeBackups' operation.
--
-- /Note:/ Consider using 'backupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbBackupId :: Lens.Lens' DeleteBackup Types.BackupId
dbBackupId = Lens.field @"backupId"
{-# INLINEABLE dbBackupId #-}
{-# DEPRECATED backupId "Use generic-lens or generic-optics with 'backupId' instead"  #-}

instance Core.ToQuery DeleteBackup where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteBackup where
        toHeaders DeleteBackup{..}
          = Core.pure ("X-Amz-Target", "BaldrApiService.DeleteBackup")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteBackup where
        toJSON DeleteBackup{..}
          = Core.object
              (Core.catMaybes [Core.Just ("BackupId" Core..= backupId)])

instance Core.AWSRequest DeleteBackup where
        type Rs DeleteBackup = DeleteBackupResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DeleteBackupResponse' Core.<$>
                   (x Core..:? "Backup") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteBackupResponse' smart constructor.
data DeleteBackupResponse = DeleteBackupResponse'
  { backup :: Core.Maybe Types.Backup
    -- ^ Information on the @Backup@ object deleted.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DeleteBackupResponse' value with any optional fields omitted.
mkDeleteBackupResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteBackupResponse
mkDeleteBackupResponse responseStatus
  = DeleteBackupResponse'{backup = Core.Nothing, responseStatus}

-- | Information on the @Backup@ object deleted.
--
-- /Note:/ Consider using 'backup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsBackup :: Lens.Lens' DeleteBackupResponse (Core.Maybe Types.Backup)
dbrrsBackup = Lens.field @"backup"
{-# INLINEABLE dbrrsBackup #-}
{-# DEPRECATED backup "Use generic-lens or generic-optics with 'backup' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsResponseStatus :: Lens.Lens' DeleteBackupResponse Core.Int
dbrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dbrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
