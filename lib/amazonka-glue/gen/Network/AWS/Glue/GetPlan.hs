{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetPlan
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets code to perform a specified mapping.
module Network.AWS.Glue.GetPlan
    (
    -- * Creating a request
      GetPlan (..)
    , mkGetPlan
    -- ** Request lenses
    , gpMapping
    , gpSource
    , gpAdditionalPlanOptionsMap
    , gpLanguage
    , gpLocation
    , gpSinks

    -- * Destructuring the response
    , GetPlanResponse (..)
    , mkGetPlanResponse
    -- ** Response lenses
    , gprfrsPythonScript
    , gprfrsScalaCode
    , gprfrsResponseStatus
    ) where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetPlan' smart constructor.
data GetPlan = GetPlan'
  { mapping :: [Types.MappingEntry]
    -- ^ The list of mappings from a source table to target tables.
  , source :: Types.CatalogEntry
    -- ^ The source table.
  , additionalPlanOptionsMap :: Core.Maybe (Core.HashMap Types.GenericString Types.GenericString)
    -- ^ A map to hold additional optional key-value parameters.
--
-- Currently, these key-value pairs are supported:
--
--     * @inferSchema@ —  Specifies whether to set @inferSchema@ to true or false for the default script generated by an AWS Glue job. For example, to set @inferSchema@ to true, pass the following key value pair:
-- @--additional-plan-options-map '{"inferSchema":"true"}'@ 
--
--
  , language :: Core.Maybe Types.Language
    -- ^ The programming language of the code to perform the mapping.
  , location :: Core.Maybe Types.Location
    -- ^ The parameters for the mapping.
  , sinks :: Core.Maybe [Types.CatalogEntry]
    -- ^ The target tables.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetPlan' value with any optional fields omitted.
mkGetPlan
    :: Types.CatalogEntry -- ^ 'source'
    -> GetPlan
mkGetPlan source
  = GetPlan'{mapping = Core.mempty, source,
             additionalPlanOptionsMap = Core.Nothing, language = Core.Nothing,
             location = Core.Nothing, sinks = Core.Nothing}

-- | The list of mappings from a source table to target tables.
--
-- /Note:/ Consider using 'mapping' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpMapping :: Lens.Lens' GetPlan [Types.MappingEntry]
gpMapping = Lens.field @"mapping"
{-# INLINEABLE gpMapping #-}
{-# DEPRECATED mapping "Use generic-lens or generic-optics with 'mapping' instead"  #-}

-- | The source table.
--
-- /Note:/ Consider using 'source' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpSource :: Lens.Lens' GetPlan Types.CatalogEntry
gpSource = Lens.field @"source"
{-# INLINEABLE gpSource #-}
{-# DEPRECATED source "Use generic-lens or generic-optics with 'source' instead"  #-}

-- | A map to hold additional optional key-value parameters.
--
-- Currently, these key-value pairs are supported:
--
--     * @inferSchema@ —  Specifies whether to set @inferSchema@ to true or false for the default script generated by an AWS Glue job. For example, to set @inferSchema@ to true, pass the following key value pair:
-- @--additional-plan-options-map '{"inferSchema":"true"}'@ 
--
--
--
-- /Note:/ Consider using 'additionalPlanOptionsMap' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpAdditionalPlanOptionsMap :: Lens.Lens' GetPlan (Core.Maybe (Core.HashMap Types.GenericString Types.GenericString))
gpAdditionalPlanOptionsMap = Lens.field @"additionalPlanOptionsMap"
{-# INLINEABLE gpAdditionalPlanOptionsMap #-}
{-# DEPRECATED additionalPlanOptionsMap "Use generic-lens or generic-optics with 'additionalPlanOptionsMap' instead"  #-}

-- | The programming language of the code to perform the mapping.
--
-- /Note:/ Consider using 'language' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpLanguage :: Lens.Lens' GetPlan (Core.Maybe Types.Language)
gpLanguage = Lens.field @"language"
{-# INLINEABLE gpLanguage #-}
{-# DEPRECATED language "Use generic-lens or generic-optics with 'language' instead"  #-}

-- | The parameters for the mapping.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpLocation :: Lens.Lens' GetPlan (Core.Maybe Types.Location)
gpLocation = Lens.field @"location"
{-# INLINEABLE gpLocation #-}
{-# DEPRECATED location "Use generic-lens or generic-optics with 'location' instead"  #-}

-- | The target tables.
--
-- /Note:/ Consider using 'sinks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpSinks :: Lens.Lens' GetPlan (Core.Maybe [Types.CatalogEntry])
gpSinks = Lens.field @"sinks"
{-# INLINEABLE gpSinks #-}
{-# DEPRECATED sinks "Use generic-lens or generic-optics with 'sinks' instead"  #-}

instance Core.ToQuery GetPlan where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetPlan where
        toHeaders GetPlan{..}
          = Core.pure ("X-Amz-Target", "AWSGlue.GetPlan") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetPlan where
        toJSON GetPlan{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Mapping" Core..= mapping),
                  Core.Just ("Source" Core..= source),
                  ("AdditionalPlanOptionsMap" Core..=) Core.<$>
                    additionalPlanOptionsMap,
                  ("Language" Core..=) Core.<$> language,
                  ("Location" Core..=) Core.<$> location,
                  ("Sinks" Core..=) Core.<$> sinks])

instance Core.AWSRequest GetPlan where
        type Rs GetPlan = GetPlanResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetPlanResponse' Core.<$>
                   (x Core..:? "PythonScript") Core.<*> x Core..:? "ScalaCode"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetPlanResponse' smart constructor.
data GetPlanResponse = GetPlanResponse'
  { pythonScript :: Core.Maybe Types.PythonScript
    -- ^ A Python script to perform the mapping.
  , scalaCode :: Core.Maybe Types.ScalaCode
    -- ^ The Scala code to perform the mapping.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetPlanResponse' value with any optional fields omitted.
mkGetPlanResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetPlanResponse
mkGetPlanResponse responseStatus
  = GetPlanResponse'{pythonScript = Core.Nothing,
                     scalaCode = Core.Nothing, responseStatus}

-- | A Python script to perform the mapping.
--
-- /Note:/ Consider using 'pythonScript' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprfrsPythonScript :: Lens.Lens' GetPlanResponse (Core.Maybe Types.PythonScript)
gprfrsPythonScript = Lens.field @"pythonScript"
{-# INLINEABLE gprfrsPythonScript #-}
{-# DEPRECATED pythonScript "Use generic-lens or generic-optics with 'pythonScript' instead"  #-}

-- | The Scala code to perform the mapping.
--
-- /Note:/ Consider using 'scalaCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprfrsScalaCode :: Lens.Lens' GetPlanResponse (Core.Maybe Types.ScalaCode)
gprfrsScalaCode = Lens.field @"scalaCode"
{-# INLINEABLE gprfrsScalaCode #-}
{-# DEPRECATED scalaCode "Use generic-lens or generic-optics with 'scalaCode' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprfrsResponseStatus :: Lens.Lens' GetPlanResponse Core.Int
gprfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gprfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
