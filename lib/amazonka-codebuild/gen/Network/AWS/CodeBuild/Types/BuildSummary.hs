{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.BuildSummary
  ( BuildSummary (..)
  -- * Smart constructor
  , mkBuildSummary
  -- * Lenses
  , bsArn
  , bsBuildStatus
  , bsPrimaryArtifact
  , bsRequestedOn
  , bsSecondaryArtifacts
  ) where

import qualified Network.AWS.CodeBuild.Types.ResolvedArtifact as Types
import qualified Network.AWS.CodeBuild.Types.StatusType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains summary information about a batch build group.
--
-- /See:/ 'mkBuildSummary' smart constructor.
data BuildSummary = BuildSummary'
  { arn :: Core.Maybe Core.Text
    -- ^ The batch build ARN.
  , buildStatus :: Core.Maybe Types.StatusType
    -- ^ The status of the build group.
--
--
--     * FAILED
--
--     * The build group failed.
--
--
--     * FAULT
--
--     * The build group faulted.
--
--
--     * IN_PROGRESS
--
--     * The build group is still in progress.
--
--
--     * STOPPED
--
--     * The build group stopped.
--
--
--     * SUCCEEDED
--
--     * The build group succeeded.
--
--
--     * TIMED_OUT
--
--     * The build group timed out.
--
--
  , primaryArtifact :: Core.Maybe Types.ResolvedArtifact
    -- ^ A @ResolvedArtifact@ object that represents the primary build artifacts for the build group.
  , requestedOn :: Core.Maybe Core.NominalDiffTime
    -- ^ When the build was started, expressed in Unix time format.
  , secondaryArtifacts :: Core.Maybe [Types.ResolvedArtifact]
    -- ^ An array of @ResolvedArtifact@ objects that represents the secondary build artifacts for the build group.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'BuildSummary' value with any optional fields omitted.
mkBuildSummary
    :: BuildSummary
mkBuildSummary
  = BuildSummary'{arn = Core.Nothing, buildStatus = Core.Nothing,
                  primaryArtifact = Core.Nothing, requestedOn = Core.Nothing,
                  secondaryArtifacts = Core.Nothing}

-- | The batch build ARN.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bsArn :: Lens.Lens' BuildSummary (Core.Maybe Core.Text)
bsArn = Lens.field @"arn"
{-# INLINEABLE bsArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The status of the build group.
--
--
--     * FAILED
--
--     * The build group failed.
--
--
--     * FAULT
--
--     * The build group faulted.
--
--
--     * IN_PROGRESS
--
--     * The build group is still in progress.
--
--
--     * STOPPED
--
--     * The build group stopped.
--
--
--     * SUCCEEDED
--
--     * The build group succeeded.
--
--
--     * TIMED_OUT
--
--     * The build group timed out.
--
--
--
-- /Note:/ Consider using 'buildStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bsBuildStatus :: Lens.Lens' BuildSummary (Core.Maybe Types.StatusType)
bsBuildStatus = Lens.field @"buildStatus"
{-# INLINEABLE bsBuildStatus #-}
{-# DEPRECATED buildStatus "Use generic-lens or generic-optics with 'buildStatus' instead"  #-}

-- | A @ResolvedArtifact@ object that represents the primary build artifacts for the build group.
--
-- /Note:/ Consider using 'primaryArtifact' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bsPrimaryArtifact :: Lens.Lens' BuildSummary (Core.Maybe Types.ResolvedArtifact)
bsPrimaryArtifact = Lens.field @"primaryArtifact"
{-# INLINEABLE bsPrimaryArtifact #-}
{-# DEPRECATED primaryArtifact "Use generic-lens or generic-optics with 'primaryArtifact' instead"  #-}

-- | When the build was started, expressed in Unix time format.
--
-- /Note:/ Consider using 'requestedOn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bsRequestedOn :: Lens.Lens' BuildSummary (Core.Maybe Core.NominalDiffTime)
bsRequestedOn = Lens.field @"requestedOn"
{-# INLINEABLE bsRequestedOn #-}
{-# DEPRECATED requestedOn "Use generic-lens or generic-optics with 'requestedOn' instead"  #-}

-- | An array of @ResolvedArtifact@ objects that represents the secondary build artifacts for the build group.
--
-- /Note:/ Consider using 'secondaryArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bsSecondaryArtifacts :: Lens.Lens' BuildSummary (Core.Maybe [Types.ResolvedArtifact])
bsSecondaryArtifacts = Lens.field @"secondaryArtifacts"
{-# INLINEABLE bsSecondaryArtifacts #-}
{-# DEPRECATED secondaryArtifacts "Use generic-lens or generic-optics with 'secondaryArtifacts' instead"  #-}

instance Core.FromJSON BuildSummary where
        parseJSON
          = Core.withObject "BuildSummary" Core.$
              \ x ->
                BuildSummary' Core.<$>
                  (x Core..:? "arn") Core.<*> x Core..:? "buildStatus" Core.<*>
                    x Core..:? "primaryArtifact"
                    Core.<*> x Core..:? "requestedOn"
                    Core.<*> x Core..:? "secondaryArtifacts"
