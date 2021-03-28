{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.DescribeSecret
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a secret. It does not include the encrypted fields. Secrets Manager only returns fields populated with a value in the response. 
--
-- __Minimum permissions__ 
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:DescribeSecret
--
--
-- __Related operations__ 
--
--     * To create a secret, use 'CreateSecret' .
--
--
--     * To modify a secret, use 'UpdateSecret' .
--
--
--     * To retrieve the encrypted secret information in a version of the secret, use 'GetSecretValue' .
--
--
--     * To list all of the secrets in the AWS account, use 'ListSecrets' .
--
--
module Network.AWS.SecretsManager.DescribeSecret
    (
    -- * Creating a request
      DescribeSecret (..)
    , mkDescribeSecret
    -- ** Request lenses
    , dSecretId

    -- * Destructuring the response
    , DescribeSecretResponse (..)
    , mkDescribeSecretResponse
    -- ** Response lenses
    , drsARN
    , drsCreatedDate
    , drsDeletedDate
    , drsDescription
    , drsKmsKeyId
    , drsLastAccessedDate
    , drsLastChangedDate
    , drsLastRotatedDate
    , drsName
    , drsOwningService
    , drsRotationEnabled
    , drsRotationLambdaARN
    , drsRotationRules
    , drsTags
    , drsVersionIdsToStages
    , drsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SecretsManager.Types as Types

-- | /See:/ 'mkDescribeSecret' smart constructor.
newtype DescribeSecret = DescribeSecret'
  { secretId :: Types.SecretId
    -- ^ The identifier of the secret whose details you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeSecret' value with any optional fields omitted.
mkDescribeSecret
    :: Types.SecretId -- ^ 'secretId'
    -> DescribeSecret
mkDescribeSecret secretId = DescribeSecret'{secretId}

-- | The identifier of the secret whose details you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
--
-- /Note:/ Consider using 'secretId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dSecretId :: Lens.Lens' DescribeSecret Types.SecretId
dSecretId = Lens.field @"secretId"
{-# INLINEABLE dSecretId #-}
{-# DEPRECATED secretId "Use generic-lens or generic-optics with 'secretId' instead"  #-}

instance Core.ToQuery DescribeSecret where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeSecret where
        toHeaders DescribeSecret{..}
          = Core.pure ("X-Amz-Target", "secretsmanager.DescribeSecret")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeSecret where
        toJSON DescribeSecret{..}
          = Core.object
              (Core.catMaybes [Core.Just ("SecretId" Core..= secretId)])

instance Core.AWSRequest DescribeSecret where
        type Rs DescribeSecret = DescribeSecretResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeSecretResponse' Core.<$>
                   (x Core..:? "ARN") Core.<*> x Core..:? "CreatedDate" Core.<*>
                     x Core..:? "DeletedDate"
                     Core.<*> x Core..:? "Description"
                     Core.<*> x Core..:? "KmsKeyId"
                     Core.<*> x Core..:? "LastAccessedDate"
                     Core.<*> x Core..:? "LastChangedDate"
                     Core.<*> x Core..:? "LastRotatedDate"
                     Core.<*> x Core..:? "Name"
                     Core.<*> x Core..:? "OwningService"
                     Core.<*> x Core..:? "RotationEnabled"
                     Core.<*> x Core..:? "RotationLambdaARN"
                     Core.<*> x Core..:? "RotationRules"
                     Core.<*> x Core..:? "Tags"
                     Core.<*> x Core..:? "VersionIdsToStages"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeSecretResponse' smart constructor.
data DescribeSecretResponse = DescribeSecretResponse'
  { arn :: Core.Maybe Types.ARN
    -- ^ The ARN of the secret.
  , createdDate :: Core.Maybe Core.NominalDiffTime
    -- ^ The date that the secret was created.
  , deletedDate :: Core.Maybe Core.NominalDiffTime
    -- ^ This value exists if the secret is scheduled for deletion. Some time after the specified date and time, Secrets Manager deletes the secret and all of its versions.
--
-- If a secret is scheduled for deletion, then its details, including the encrypted secret information, is not accessible. To cancel a scheduled deletion and restore access, use 'RestoreSecret' .
  , description :: Core.Maybe Types.Description
    -- ^ The user-provided description of the secret.
  , kmsKeyId :: Core.Maybe Types.KmsKeyIdType
    -- ^ The ARN or alias of the AWS KMS customer master key (CMK) that's used to encrypt the @SecretString@ or @SecretBinary@ fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default AWS KMS CMK (the one named @awssecretsmanager@ ) for this account.
  , lastAccessedDate :: Core.Maybe Core.NominalDiffTime
    -- ^ The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.
  , lastChangedDate :: Core.Maybe Core.NominalDiffTime
    -- ^ The last date and time that this secret was modified in any way.
  , lastRotatedDate :: Core.Maybe Core.NominalDiffTime
    -- ^ The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret has never rotated.
  , name :: Core.Maybe Types.Name
    -- ^ The user-provided friendly name of the secret.
  , owningService :: Core.Maybe Types.OwningService
    -- ^ Returns the name of the service that created this secret.
  , rotationEnabled :: Core.Maybe Core.Bool
    -- ^ Specifies whether automatic rotation is enabled for this secret.
--
-- To enable rotation, use 'RotateSecret' with @AutomaticallyRotateAfterDays@ set to a value greater than 0. To disable rotation, use 'CancelRotateSecret' .
  , rotationLambdaARN :: Core.Maybe Types.RotationLambdaARN
    -- ^ The ARN of a Lambda function that's invoked by Secrets Manager to rotate the secret either automatically per the schedule or manually by a call to @RotateSecret@ .
  , rotationRules :: Core.Maybe Types.RotationRulesType
    -- ^ A structure that contains the rotation configuration for this secret.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ The list of user-defined tags that are associated with the secret. To add tags to a secret, use 'TagResource' . To remove tags, use 'UntagResource' .
  , versionIdsToStages :: Core.Maybe (Core.HashMap Types.SecretVersionIdType (Core.NonEmpty Types.SecretVersionStageType))
    -- ^ A list of all of the currently assigned @VersionStage@ staging labels and the @VersionId@ that each is attached to. Staging labels are used to keep track of the different versions during the rotation process.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeSecretResponse' value with any optional fields omitted.
mkDescribeSecretResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeSecretResponse
mkDescribeSecretResponse responseStatus
  = DescribeSecretResponse'{arn = Core.Nothing,
                            createdDate = Core.Nothing, deletedDate = Core.Nothing,
                            description = Core.Nothing, kmsKeyId = Core.Nothing,
                            lastAccessedDate = Core.Nothing, lastChangedDate = Core.Nothing,
                            lastRotatedDate = Core.Nothing, name = Core.Nothing,
                            owningService = Core.Nothing, rotationEnabled = Core.Nothing,
                            rotationLambdaARN = Core.Nothing, rotationRules = Core.Nothing,
                            tags = Core.Nothing, versionIdsToStages = Core.Nothing,
                            responseStatus}

-- | The ARN of the secret.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsARN :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.ARN)
drsARN = Lens.field @"arn"
{-# INLINEABLE drsARN #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The date that the secret was created.
--
-- /Note:/ Consider using 'createdDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsCreatedDate :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.NominalDiffTime)
drsCreatedDate = Lens.field @"createdDate"
{-# INLINEABLE drsCreatedDate #-}
{-# DEPRECATED createdDate "Use generic-lens or generic-optics with 'createdDate' instead"  #-}

-- | This value exists if the secret is scheduled for deletion. Some time after the specified date and time, Secrets Manager deletes the secret and all of its versions.
--
-- If a secret is scheduled for deletion, then its details, including the encrypted secret information, is not accessible. To cancel a scheduled deletion and restore access, use 'RestoreSecret' .
--
-- /Note:/ Consider using 'deletedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsDeletedDate :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.NominalDiffTime)
drsDeletedDate = Lens.field @"deletedDate"
{-# INLINEABLE drsDeletedDate #-}
{-# DEPRECATED deletedDate "Use generic-lens or generic-optics with 'deletedDate' instead"  #-}

-- | The user-provided description of the secret.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsDescription :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.Description)
drsDescription = Lens.field @"description"
{-# INLINEABLE drsDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The ARN or alias of the AWS KMS customer master key (CMK) that's used to encrypt the @SecretString@ or @SecretBinary@ fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default AWS KMS CMK (the one named @awssecretsmanager@ ) for this account.
--
-- /Note:/ Consider using 'kmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsKmsKeyId :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.KmsKeyIdType)
drsKmsKeyId = Lens.field @"kmsKeyId"
{-# INLINEABLE drsKmsKeyId #-}
{-# DEPRECATED kmsKeyId "Use generic-lens or generic-optics with 'kmsKeyId' instead"  #-}

-- | The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.
--
-- /Note:/ Consider using 'lastAccessedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsLastAccessedDate :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.NominalDiffTime)
drsLastAccessedDate = Lens.field @"lastAccessedDate"
{-# INLINEABLE drsLastAccessedDate #-}
{-# DEPRECATED lastAccessedDate "Use generic-lens or generic-optics with 'lastAccessedDate' instead"  #-}

-- | The last date and time that this secret was modified in any way.
--
-- /Note:/ Consider using 'lastChangedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsLastChangedDate :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.NominalDiffTime)
drsLastChangedDate = Lens.field @"lastChangedDate"
{-# INLINEABLE drsLastChangedDate #-}
{-# DEPRECATED lastChangedDate "Use generic-lens or generic-optics with 'lastChangedDate' instead"  #-}

-- | The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret has never rotated.
--
-- /Note:/ Consider using 'lastRotatedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsLastRotatedDate :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.NominalDiffTime)
drsLastRotatedDate = Lens.field @"lastRotatedDate"
{-# INLINEABLE drsLastRotatedDate #-}
{-# DEPRECATED lastRotatedDate "Use generic-lens or generic-optics with 'lastRotatedDate' instead"  #-}

-- | The user-provided friendly name of the secret.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsName :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.Name)
drsName = Lens.field @"name"
{-# INLINEABLE drsName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | Returns the name of the service that created this secret.
--
-- /Note:/ Consider using 'owningService' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsOwningService :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.OwningService)
drsOwningService = Lens.field @"owningService"
{-# INLINEABLE drsOwningService #-}
{-# DEPRECATED owningService "Use generic-lens or generic-optics with 'owningService' instead"  #-}

-- | Specifies whether automatic rotation is enabled for this secret.
--
-- To enable rotation, use 'RotateSecret' with @AutomaticallyRotateAfterDays@ set to a value greater than 0. To disable rotation, use 'CancelRotateSecret' .
--
-- /Note:/ Consider using 'rotationEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsRotationEnabled :: Lens.Lens' DescribeSecretResponse (Core.Maybe Core.Bool)
drsRotationEnabled = Lens.field @"rotationEnabled"
{-# INLINEABLE drsRotationEnabled #-}
{-# DEPRECATED rotationEnabled "Use generic-lens or generic-optics with 'rotationEnabled' instead"  #-}

-- | The ARN of a Lambda function that's invoked by Secrets Manager to rotate the secret either automatically per the schedule or manually by a call to @RotateSecret@ .
--
-- /Note:/ Consider using 'rotationLambdaARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsRotationLambdaARN :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.RotationLambdaARN)
drsRotationLambdaARN = Lens.field @"rotationLambdaARN"
{-# INLINEABLE drsRotationLambdaARN #-}
{-# DEPRECATED rotationLambdaARN "Use generic-lens or generic-optics with 'rotationLambdaARN' instead"  #-}

-- | A structure that contains the rotation configuration for this secret.
--
-- /Note:/ Consider using 'rotationRules' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsRotationRules :: Lens.Lens' DescribeSecretResponse (Core.Maybe Types.RotationRulesType)
drsRotationRules = Lens.field @"rotationRules"
{-# INLINEABLE drsRotationRules #-}
{-# DEPRECATED rotationRules "Use generic-lens or generic-optics with 'rotationRules' instead"  #-}

-- | The list of user-defined tags that are associated with the secret. To add tags to a secret, use 'TagResource' . To remove tags, use 'UntagResource' .
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsTags :: Lens.Lens' DescribeSecretResponse (Core.Maybe [Types.Tag])
drsTags = Lens.field @"tags"
{-# INLINEABLE drsTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | A list of all of the currently assigned @VersionStage@ staging labels and the @VersionId@ that each is attached to. Staging labels are used to keep track of the different versions during the rotation process.
--
-- /Note:/ Consider using 'versionIdsToStages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsVersionIdsToStages :: Lens.Lens' DescribeSecretResponse (Core.Maybe (Core.HashMap Types.SecretVersionIdType (Core.NonEmpty Types.SecretVersionStageType)))
drsVersionIdsToStages = Lens.field @"versionIdsToStages"
{-# INLINEABLE drsVersionIdsToStages #-}
{-# DEPRECATED versionIdsToStages "Use generic-lens or generic-optics with 'versionIdsToStages' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeSecretResponse Core.Int
drsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
