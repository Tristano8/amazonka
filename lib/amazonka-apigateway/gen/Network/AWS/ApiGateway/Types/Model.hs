{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApiGateway.Types.Model
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ApiGateway.Types.Model
  ( Model (..)
  -- * Smart constructor
  , mkModel
  -- * Lenses
  , mContentType
  , mDescription
  , mId
  , mName
  , mSchema
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents the data structure of a method's request or response payload.
--
-- A request model defines the data structure of the client-supplied request payload. A response model defines the data structure of the response payload returned by the back end. Although not required, models are useful for mapping payloads between the front end and back end.
-- A model is used for generating an API's SDK, validating the input request body, and creating a skeletal mapping template.
-- 'Method' , 'MethodResponse' , <https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html Models and Mappings> 
--
-- /See:/ 'mkModel' smart constructor.
data Model = Model'
  { contentType :: Core.Maybe Core.Text
    -- ^ The content-type for the model.
  , description :: Core.Maybe Core.Text
    -- ^ The description of the model.
  , id :: Core.Maybe Core.Text
    -- ^ The identifier for the model resource.
  , name :: Core.Maybe Core.Text
    -- ^ The name of the model. Must be an alphanumeric string.
  , schema :: Core.Maybe Core.Text
    -- ^ The schema for the model. For @application/json@ models, this should be <https://tools.ietf.org/html/draft-zyp-json-schema-04 JSON schema draft 4> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Model' value with any optional fields omitted.
mkModel
    :: Model
mkModel
  = Model'{contentType = Core.Nothing, description = Core.Nothing,
           id = Core.Nothing, name = Core.Nothing, schema = Core.Nothing}

-- | The content-type for the model.
--
-- /Note:/ Consider using 'contentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mContentType :: Lens.Lens' Model (Core.Maybe Core.Text)
mContentType = Lens.field @"contentType"
{-# INLINEABLE mContentType #-}
{-# DEPRECATED contentType "Use generic-lens or generic-optics with 'contentType' instead"  #-}

-- | The description of the model.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDescription :: Lens.Lens' Model (Core.Maybe Core.Text)
mDescription = Lens.field @"description"
{-# INLINEABLE mDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The identifier for the model resource.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mId :: Lens.Lens' Model (Core.Maybe Core.Text)
mId = Lens.field @"id"
{-# INLINEABLE mId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

-- | The name of the model. Must be an alphanumeric string.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mName :: Lens.Lens' Model (Core.Maybe Core.Text)
mName = Lens.field @"name"
{-# INLINEABLE mName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The schema for the model. For @application/json@ models, this should be <https://tools.ietf.org/html/draft-zyp-json-schema-04 JSON schema draft 4> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.
--
-- /Note:/ Consider using 'schema' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mSchema :: Lens.Lens' Model (Core.Maybe Core.Text)
mSchema = Lens.field @"schema"
{-# INLINEABLE mSchema #-}
{-# DEPRECATED schema "Use generic-lens or generic-optics with 'schema' instead"  #-}

instance Core.FromJSON Model where
        parseJSON
          = Core.withObject "Model" Core.$
              \ x ->
                Model' Core.<$>
                  (x Core..:? "contentType") Core.<*> x Core..:? "description"
                    Core.<*> x Core..:? "id"
                    Core.<*> x Core..:? "name"
                    Core.<*> x Core..:? "schema"
