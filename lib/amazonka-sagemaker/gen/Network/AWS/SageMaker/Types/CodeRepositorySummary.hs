{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CodeRepositorySummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.CodeRepositorySummary
  ( CodeRepositorySummary (..)
  -- * Smart constructor
  , mkCodeRepositorySummary
  -- * Lenses
  , crsCodeRepositoryName
  , crsCodeRepositoryArn
  , crsCreationTime
  , crsLastModifiedTime
  , crsGitConfig
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.CodeRepositoryArn as Types
import qualified Network.AWS.SageMaker.Types.EntityName as Types
import qualified Network.AWS.SageMaker.Types.GitConfig as Types

-- | Specifies summary information about a Git repository.
--
-- /See:/ 'mkCodeRepositorySummary' smart constructor.
data CodeRepositorySummary = CodeRepositorySummary'
  { codeRepositoryName :: Types.EntityName
    -- ^ The name of the Git repository.
  , codeRepositoryArn :: Types.CodeRepositoryArn
    -- ^ The Amazon Resource Name (ARN) of the Git repository.
  , creationTime :: Core.NominalDiffTime
    -- ^ The date and time that the Git repository was created.
  , lastModifiedTime :: Core.NominalDiffTime
    -- ^ The date and time that the Git repository was last modified.
  , gitConfig :: Core.Maybe Types.GitConfig
    -- ^ Configuration details for the Git repository, including the URL where it is located and the ARN of the AWS Secrets Manager secret that contains the credentials used to access the repository.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'CodeRepositorySummary' value with any optional fields omitted.
mkCodeRepositorySummary
    :: Types.EntityName -- ^ 'codeRepositoryName'
    -> Types.CodeRepositoryArn -- ^ 'codeRepositoryArn'
    -> Core.NominalDiffTime -- ^ 'creationTime'
    -> Core.NominalDiffTime -- ^ 'lastModifiedTime'
    -> CodeRepositorySummary
mkCodeRepositorySummary codeRepositoryName codeRepositoryArn
  creationTime lastModifiedTime
  = CodeRepositorySummary'{codeRepositoryName, codeRepositoryArn,
                           creationTime, lastModifiedTime, gitConfig = Core.Nothing}

-- | The name of the Git repository.
--
-- /Note:/ Consider using 'codeRepositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsCodeRepositoryName :: Lens.Lens' CodeRepositorySummary Types.EntityName
crsCodeRepositoryName = Lens.field @"codeRepositoryName"
{-# INLINEABLE crsCodeRepositoryName #-}
{-# DEPRECATED codeRepositoryName "Use generic-lens or generic-optics with 'codeRepositoryName' instead"  #-}

-- | The Amazon Resource Name (ARN) of the Git repository.
--
-- /Note:/ Consider using 'codeRepositoryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsCodeRepositoryArn :: Lens.Lens' CodeRepositorySummary Types.CodeRepositoryArn
crsCodeRepositoryArn = Lens.field @"codeRepositoryArn"
{-# INLINEABLE crsCodeRepositoryArn #-}
{-# DEPRECATED codeRepositoryArn "Use generic-lens or generic-optics with 'codeRepositoryArn' instead"  #-}

-- | The date and time that the Git repository was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsCreationTime :: Lens.Lens' CodeRepositorySummary Core.NominalDiffTime
crsCreationTime = Lens.field @"creationTime"
{-# INLINEABLE crsCreationTime #-}
{-# DEPRECATED creationTime "Use generic-lens or generic-optics with 'creationTime' instead"  #-}

-- | The date and time that the Git repository was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsLastModifiedTime :: Lens.Lens' CodeRepositorySummary Core.NominalDiffTime
crsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE crsLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | Configuration details for the Git repository, including the URL where it is located and the ARN of the AWS Secrets Manager secret that contains the credentials used to access the repository.
--
-- /Note:/ Consider using 'gitConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsGitConfig :: Lens.Lens' CodeRepositorySummary (Core.Maybe Types.GitConfig)
crsGitConfig = Lens.field @"gitConfig"
{-# INLINEABLE crsGitConfig #-}
{-# DEPRECATED gitConfig "Use generic-lens or generic-optics with 'gitConfig' instead"  #-}

instance Core.FromJSON CodeRepositorySummary where
        parseJSON
          = Core.withObject "CodeRepositorySummary" Core.$
              \ x ->
                CodeRepositorySummary' Core.<$>
                  (x Core..: "CodeRepositoryName") Core.<*>
                    x Core..: "CodeRepositoryArn"
                    Core.<*> x Core..: "CreationTime"
                    Core.<*> x Core..: "LastModifiedTime"
                    Core.<*> x Core..:? "GitConfig"
