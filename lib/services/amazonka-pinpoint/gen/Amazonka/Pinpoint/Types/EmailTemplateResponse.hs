{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Pinpoint.Types.EmailTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.EmailTemplateResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Pinpoint.Types.TemplateType
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the content and settings for a message
-- template that can be used in messages that are sent through the email
-- channel.
--
-- /See:/ 'newEmailTemplateResponse' smart constructor.
data EmailTemplateResponse = EmailTemplateResponse'
  { -- | The subject line, or title, that\'s used in email messages that are
    -- based on the message template.
    subject :: Prelude.Maybe Prelude.Text,
    -- | The message body, in plain text format, that\'s used in email messages
    -- that are based on the message template.
    textPart :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the message template.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The custom description of the message template.
    templateDescription :: Prelude.Maybe Prelude.Text,
    -- | The JSON object that specifies the default values that are used for
    -- message variables in the message template. This object is a set of
    -- key-value pairs. Each key defines a message variable in the template.
    -- The corresponding value defines the default value for that variable.
    defaultSubstitutions :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier, as an integer, for the active version of the
    -- message template, or the version of the template that you specified by
    -- using the version parameter in your request.
    version :: Prelude.Maybe Prelude.Text,
    -- | The message body, in HTML format, that\'s used in email messages that
    -- are based on the message template.
    htmlPart :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the recommender model that\'s used by the
    -- message template.
    recommenderId :: Prelude.Maybe Prelude.Text,
    -- | A string-to-string map of key-value pairs that identifies the tags that
    -- are associated with the message template. Each tag consists of a
    -- required tag key and an associated tag value.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The date, in ISO 8601 format, when the message template was last
    -- modified.
    lastModifiedDate :: Prelude.Text,
    -- | The date, in ISO 8601 format, when the message template was created.
    creationDate :: Prelude.Text,
    -- | The name of the message template.
    templateName :: Prelude.Text,
    -- | The type of channel that the message template is designed for. For an
    -- email template, this value is EMAIL.
    templateType :: TemplateType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmailTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subject', 'emailTemplateResponse_subject' - The subject line, or title, that\'s used in email messages that are
-- based on the message template.
--
-- 'textPart', 'emailTemplateResponse_textPart' - The message body, in plain text format, that\'s used in email messages
-- that are based on the message template.
--
-- 'arn', 'emailTemplateResponse_arn' - The Amazon Resource Name (ARN) of the message template.
--
-- 'templateDescription', 'emailTemplateResponse_templateDescription' - The custom description of the message template.
--
-- 'defaultSubstitutions', 'emailTemplateResponse_defaultSubstitutions' - The JSON object that specifies the default values that are used for
-- message variables in the message template. This object is a set of
-- key-value pairs. Each key defines a message variable in the template.
-- The corresponding value defines the default value for that variable.
--
-- 'version', 'emailTemplateResponse_version' - The unique identifier, as an integer, for the active version of the
-- message template, or the version of the template that you specified by
-- using the version parameter in your request.
--
-- 'htmlPart', 'emailTemplateResponse_htmlPart' - The message body, in HTML format, that\'s used in email messages that
-- are based on the message template.
--
-- 'recommenderId', 'emailTemplateResponse_recommenderId' - The unique identifier for the recommender model that\'s used by the
-- message template.
--
-- 'tags', 'emailTemplateResponse_tags' - A string-to-string map of key-value pairs that identifies the tags that
-- are associated with the message template. Each tag consists of a
-- required tag key and an associated tag value.
--
-- 'lastModifiedDate', 'emailTemplateResponse_lastModifiedDate' - The date, in ISO 8601 format, when the message template was last
-- modified.
--
-- 'creationDate', 'emailTemplateResponse_creationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- 'templateName', 'emailTemplateResponse_templateName' - The name of the message template.
--
-- 'templateType', 'emailTemplateResponse_templateType' - The type of channel that the message template is designed for. For an
-- email template, this value is EMAIL.
newEmailTemplateResponse ::
  -- | 'lastModifiedDate'
  Prelude.Text ->
  -- | 'creationDate'
  Prelude.Text ->
  -- | 'templateName'
  Prelude.Text ->
  -- | 'templateType'
  TemplateType ->
  EmailTemplateResponse
newEmailTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    EmailTemplateResponse'
      { subject = Prelude.Nothing,
        textPart = Prelude.Nothing,
        arn = Prelude.Nothing,
        templateDescription = Prelude.Nothing,
        defaultSubstitutions = Prelude.Nothing,
        version = Prelude.Nothing,
        htmlPart = Prelude.Nothing,
        recommenderId = Prelude.Nothing,
        tags = Prelude.Nothing,
        lastModifiedDate = pLastModifiedDate_,
        creationDate = pCreationDate_,
        templateName = pTemplateName_,
        templateType = pTemplateType_
      }

-- | The subject line, or title, that\'s used in email messages that are
-- based on the message template.
emailTemplateResponse_subject :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_subject = Lens.lens (\EmailTemplateResponse' {subject} -> subject) (\s@EmailTemplateResponse' {} a -> s {subject = a} :: EmailTemplateResponse)

-- | The message body, in plain text format, that\'s used in email messages
-- that are based on the message template.
emailTemplateResponse_textPart :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_textPart = Lens.lens (\EmailTemplateResponse' {textPart} -> textPart) (\s@EmailTemplateResponse' {} a -> s {textPart = a} :: EmailTemplateResponse)

-- | The Amazon Resource Name (ARN) of the message template.
emailTemplateResponse_arn :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_arn = Lens.lens (\EmailTemplateResponse' {arn} -> arn) (\s@EmailTemplateResponse' {} a -> s {arn = a} :: EmailTemplateResponse)

-- | The custom description of the message template.
emailTemplateResponse_templateDescription :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_templateDescription = Lens.lens (\EmailTemplateResponse' {templateDescription} -> templateDescription) (\s@EmailTemplateResponse' {} a -> s {templateDescription = a} :: EmailTemplateResponse)

-- | The JSON object that specifies the default values that are used for
-- message variables in the message template. This object is a set of
-- key-value pairs. Each key defines a message variable in the template.
-- The corresponding value defines the default value for that variable.
emailTemplateResponse_defaultSubstitutions :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_defaultSubstitutions = Lens.lens (\EmailTemplateResponse' {defaultSubstitutions} -> defaultSubstitutions) (\s@EmailTemplateResponse' {} a -> s {defaultSubstitutions = a} :: EmailTemplateResponse)

-- | The unique identifier, as an integer, for the active version of the
-- message template, or the version of the template that you specified by
-- using the version parameter in your request.
emailTemplateResponse_version :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_version = Lens.lens (\EmailTemplateResponse' {version} -> version) (\s@EmailTemplateResponse' {} a -> s {version = a} :: EmailTemplateResponse)

-- | The message body, in HTML format, that\'s used in email messages that
-- are based on the message template.
emailTemplateResponse_htmlPart :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_htmlPart = Lens.lens (\EmailTemplateResponse' {htmlPart} -> htmlPart) (\s@EmailTemplateResponse' {} a -> s {htmlPart = a} :: EmailTemplateResponse)

-- | The unique identifier for the recommender model that\'s used by the
-- message template.
emailTemplateResponse_recommenderId :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe Prelude.Text)
emailTemplateResponse_recommenderId = Lens.lens (\EmailTemplateResponse' {recommenderId} -> recommenderId) (\s@EmailTemplateResponse' {} a -> s {recommenderId = a} :: EmailTemplateResponse)

-- | A string-to-string map of key-value pairs that identifies the tags that
-- are associated with the message template. Each tag consists of a
-- required tag key and an associated tag value.
emailTemplateResponse_tags :: Lens.Lens' EmailTemplateResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
emailTemplateResponse_tags = Lens.lens (\EmailTemplateResponse' {tags} -> tags) (\s@EmailTemplateResponse' {} a -> s {tags = a} :: EmailTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The date, in ISO 8601 format, when the message template was last
-- modified.
emailTemplateResponse_lastModifiedDate :: Lens.Lens' EmailTemplateResponse Prelude.Text
emailTemplateResponse_lastModifiedDate = Lens.lens (\EmailTemplateResponse' {lastModifiedDate} -> lastModifiedDate) (\s@EmailTemplateResponse' {} a -> s {lastModifiedDate = a} :: EmailTemplateResponse)

-- | The date, in ISO 8601 format, when the message template was created.
emailTemplateResponse_creationDate :: Lens.Lens' EmailTemplateResponse Prelude.Text
emailTemplateResponse_creationDate = Lens.lens (\EmailTemplateResponse' {creationDate} -> creationDate) (\s@EmailTemplateResponse' {} a -> s {creationDate = a} :: EmailTemplateResponse)

-- | The name of the message template.
emailTemplateResponse_templateName :: Lens.Lens' EmailTemplateResponse Prelude.Text
emailTemplateResponse_templateName = Lens.lens (\EmailTemplateResponse' {templateName} -> templateName) (\s@EmailTemplateResponse' {} a -> s {templateName = a} :: EmailTemplateResponse)

-- | The type of channel that the message template is designed for. For an
-- email template, this value is EMAIL.
emailTemplateResponse_templateType :: Lens.Lens' EmailTemplateResponse TemplateType
emailTemplateResponse_templateType = Lens.lens (\EmailTemplateResponse' {templateType} -> templateType) (\s@EmailTemplateResponse' {} a -> s {templateType = a} :: EmailTemplateResponse)

instance Core.FromJSON EmailTemplateResponse where
  parseJSON =
    Core.withObject
      "EmailTemplateResponse"
      ( \x ->
          EmailTemplateResponse'
            Prelude.<$> (x Core..:? "Subject")
            Prelude.<*> (x Core..:? "TextPart")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "TemplateDescription")
            Prelude.<*> (x Core..:? "DefaultSubstitutions")
            Prelude.<*> (x Core..:? "Version")
            Prelude.<*> (x Core..:? "HtmlPart")
            Prelude.<*> (x Core..:? "RecommenderId")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "LastModifiedDate")
            Prelude.<*> (x Core..: "CreationDate")
            Prelude.<*> (x Core..: "TemplateName")
            Prelude.<*> (x Core..: "TemplateType")
      )

instance Prelude.Hashable EmailTemplateResponse where
  hashWithSalt _salt EmailTemplateResponse' {..} =
    _salt `Prelude.hashWithSalt` subject
      `Prelude.hashWithSalt` textPart
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` templateDescription
      `Prelude.hashWithSalt` defaultSubstitutions
      `Prelude.hashWithSalt` version
      `Prelude.hashWithSalt` htmlPart
      `Prelude.hashWithSalt` recommenderId
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` templateName
      `Prelude.hashWithSalt` templateType

instance Prelude.NFData EmailTemplateResponse where
  rnf EmailTemplateResponse' {..} =
    Prelude.rnf subject
      `Prelude.seq` Prelude.rnf textPart
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf templateDescription
      `Prelude.seq` Prelude.rnf defaultSubstitutions
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf htmlPart
      `Prelude.seq` Prelude.rnf recommenderId
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf templateType
