{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CORSRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CORSRule
  ( CORSRule (..)
  -- * Smart constructor
  , mkCORSRule
  -- * Lenses
  , corsrAllowedMethods
  , corsrAllowedOrigins
  , corsrAllowedHeaders
  , corsrExposeHeaders
  , corsrMaxAgeSeconds
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.S3.Internal as Types
import qualified Network.AWS.S3.Types.AllowedHeader as Types
import qualified Network.AWS.S3.Types.AllowedMethod as Types
import qualified Network.AWS.S3.Types.AllowedOrigin as Types
import qualified Network.AWS.S3.Types.ExposeHeader as Types

-- | Specifies a cross-origin access rule for an Amazon S3 bucket.
--
-- /See:/ 'mkCORSRule' smart constructor.
data CORSRule = CORSRule'
  { allowedMethods :: [Types.AllowedMethod]
    -- ^ An HTTP method that you allow the origin to execute. Valid values are @GET@ , @PUT@ , @HEAD@ , @POST@ , and @DELETE@ .
  , allowedOrigins :: [Types.AllowedOrigin]
    -- ^ One or more origins you want customers to be able to access the bucket from.
  , allowedHeaders :: Core.Maybe [Types.AllowedHeader]
    -- ^ Headers that are specified in the @Access-Control-Request-Headers@ header. These headers are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns any requested headers that are allowed.
  , exposeHeaders :: Core.Maybe [Types.ExposeHeader]
    -- ^ One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript @XMLHttpRequest@ object).
  , maxAgeSeconds :: Core.Maybe Core.Int
    -- ^ The time in seconds that your browser is to cache the preflight response for the specified resource.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CORSRule' value with any optional fields omitted.
mkCORSRule
    :: CORSRule
mkCORSRule
  = CORSRule'{allowedMethods = Core.mempty,
              allowedOrigins = Core.mempty, allowedHeaders = Core.Nothing,
              exposeHeaders = Core.Nothing, maxAgeSeconds = Core.Nothing}

-- | An HTTP method that you allow the origin to execute. Valid values are @GET@ , @PUT@ , @HEAD@ , @POST@ , and @DELETE@ .
--
-- /Note:/ Consider using 'allowedMethods' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
corsrAllowedMethods :: Lens.Lens' CORSRule [Types.AllowedMethod]
corsrAllowedMethods = Lens.field @"allowedMethods"
{-# INLINEABLE corsrAllowedMethods #-}
{-# DEPRECATED allowedMethods "Use generic-lens or generic-optics with 'allowedMethods' instead"  #-}

-- | One or more origins you want customers to be able to access the bucket from.
--
-- /Note:/ Consider using 'allowedOrigins' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
corsrAllowedOrigins :: Lens.Lens' CORSRule [Types.AllowedOrigin]
corsrAllowedOrigins = Lens.field @"allowedOrigins"
{-# INLINEABLE corsrAllowedOrigins #-}
{-# DEPRECATED allowedOrigins "Use generic-lens or generic-optics with 'allowedOrigins' instead"  #-}

-- | Headers that are specified in the @Access-Control-Request-Headers@ header. These headers are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns any requested headers that are allowed.
--
-- /Note:/ Consider using 'allowedHeaders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
corsrAllowedHeaders :: Lens.Lens' CORSRule (Core.Maybe [Types.AllowedHeader])
corsrAllowedHeaders = Lens.field @"allowedHeaders"
{-# INLINEABLE corsrAllowedHeaders #-}
{-# DEPRECATED allowedHeaders "Use generic-lens or generic-optics with 'allowedHeaders' instead"  #-}

-- | One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript @XMLHttpRequest@ object).
--
-- /Note:/ Consider using 'exposeHeaders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
corsrExposeHeaders :: Lens.Lens' CORSRule (Core.Maybe [Types.ExposeHeader])
corsrExposeHeaders = Lens.field @"exposeHeaders"
{-# INLINEABLE corsrExposeHeaders #-}
{-# DEPRECATED exposeHeaders "Use generic-lens or generic-optics with 'exposeHeaders' instead"  #-}

-- | The time in seconds that your browser is to cache the preflight response for the specified resource.
--
-- /Note:/ Consider using 'maxAgeSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
corsrMaxAgeSeconds :: Lens.Lens' CORSRule (Core.Maybe Core.Int)
corsrMaxAgeSeconds = Lens.field @"maxAgeSeconds"
{-# INLINEABLE corsrMaxAgeSeconds #-}
{-# DEPRECATED maxAgeSeconds "Use generic-lens or generic-optics with 'maxAgeSeconds' instead"  #-}

instance Core.ToXML CORSRule where
        toXML CORSRule{..}
          = Core.toXMLList "AllowedMethod" allowedMethods Core.<>
              Core.toXMLList "AllowedOrigin" allowedOrigins
              Core.<>
              Core.maybe Core.mempty (Core.toXMLList "AllowedHeader")
                allowedHeaders
              Core.<>
              Core.maybe Core.mempty (Core.toXMLList "ExposeHeader")
                exposeHeaders
              Core.<>
              Core.maybe Core.mempty (Core.toXMLElement "MaxAgeSeconds")
                maxAgeSeconds

instance Core.FromXML CORSRule where
        parseXML x
          = CORSRule' Core.<$>
              (x Core..@ "AllowedMethod" Core..@! Core.mempty) Core.<*>
                x Core..@ "AllowedOrigin" Core..@! Core.mempty
                Core.<*> x Core..@? "AllowedHeader"
                Core.<*> x Core..@? "ExposeHeader"
                Core.<*> x Core..@? "MaxAgeSeconds"
