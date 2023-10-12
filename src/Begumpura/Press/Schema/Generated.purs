module Begumpura.Press.Schema.Generated where

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import GraphQL.Client.Args (class ArgGql, class RecordArg, NotNull)
import GraphQL.Client.Union (GqlUnion)
import GraphQL.Client.ID (ID)
import Begumpura.Press.Schema.Generated.Enum.FallbackLocaleInputType (FallbackLocaleInputType)
import Begumpura.Press.Schema.Generated.Enum.LocaleInputType (LocaleInputType)
import Begumpura.Press.Schema.Generated.Enum.PostStatus (PostStatus)
import Begumpura.Press.Schema.Generated.Enum.PostStatusInput (PostStatusInput)
import Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationTo (PayloadPreferenceUserRelationTo)
import Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationRelationTo (PayloadPreferenceUserRelationRelationTo)
import Begumpura.Press.Schema.Generated.Enum.PostStatusMutationInput (PostStatusMutationInput)
import Begumpura.Press.Schema.Generated.Enum.PostUpdateStatusMutationInput (PostUpdateStatusMutationInput)
import Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationshipInputRelationTo (PayloadPreferenceUserRelationshipInputRelationTo)
import Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUpdateUserRelationshipInputRelationTo (PayloadPreferenceUpdateUserRelationshipInputRelationTo)


import Data.Argonaut.Core as Data.Argonaut.Core





newtype Query = Query
  { "Category" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe Category)
  , "Categories" :: 
    { draft :: Boolean
    , where :: CategoryWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe Categories)
  , docAccessCategory :: 
    { id :: (NotNull String)
    }
    -> (Maybe CategoriesDocAccess)
  , "Post" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe Post)
  , "Posts" :: 
    { draft :: Boolean
    , where :: PostWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe Posts)
  , docAccessPost :: 
    { id :: (NotNull String)
    }
    -> (Maybe PostsDocAccess)
  , "Tag" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe Tag)
  , "Tags" :: 
    { draft :: Boolean
    , where :: TagWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe Tags)
  , docAccessTag :: 
    { id :: (NotNull String)
    }
    -> (Maybe TagsDocAccess)
  , "User" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe User)
  , "Users" :: 
    { draft :: Boolean
    , where :: UserWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe Users)
  , docAccessUser :: 
    { id :: (NotNull String)
    }
    -> (Maybe UsersDocAccess)
  , meUser :: 
    { 
    }
    -> (Maybe UsersMe)
  , initializedUser :: 
    { 
    }
    -> (Maybe Boolean)
  , "Media" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe Media)
  , allMedia :: 
    { draft :: Boolean
    , where :: MediaWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe AllMedia)
  , docAccessMedia :: 
    { id :: (NotNull String)
    }
    -> (Maybe MediaDocAccess)
  , "PayloadPreference" :: 
    { id :: (NotNull String)
    , draft :: Boolean
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    }
    -> (Maybe PayloadPreference)
  , "PayloadPreferences" :: 
    { draft :: Boolean
    , where :: PayloadPreferenceWhere
    , fallbackLocale :: FallbackLocaleInputType
    , locale :: LocaleInputType
    , limit :: Int
    , page :: Int
    , sort :: String
    }
    -> (Maybe PayloadPreferences)
  , docAccessPayloadPreference :: 
    { id :: (NotNull String)
    }
    -> (Maybe PayloadPreferencesDocAccess)
  , "Access" :: 
    { 
    }
    -> (Maybe Access)
  }
derive instance newtypeQuery :: Newtype Query _

newtype Category = Category
  { id :: 
    { 
    }
    -> (Maybe String)
  , name :: 
    { 
    }
    -> (Maybe String)
  }
derive instance newtypeCategory :: Newtype Category _



newtype Categories = Categories
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe Category)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypeCategories :: Newtype Categories _

newtype CategoryWhere = CategoryWhere
  { name :: CategoryNameOperator
  , id :: CategoryIdOperator
  , "AND" :: (Array CategoryWhereAnd)
  , "OR" :: (Array CategoryWhereOr)
  }
derive instance newtypeCategoryWhere :: Newtype CategoryWhere _

newtype CategoryNameOperator = CategoryNameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeCategoryNameOperator :: Newtype CategoryNameOperator _

newtype CategoryIdOperator = CategoryIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeCategoryIdOperator :: Newtype CategoryIdOperator _

newtype CategoryWhereAnd = CategoryWhereAnd
  { name :: CategoryNameOperator
  , id :: CategoryIdOperator
  }
derive instance newtypeCategoryWhereAnd :: Newtype CategoryWhereAnd _

newtype CategoryWhereOr = CategoryWhereOr
  { name :: CategoryNameOperator
  , id :: CategoryIdOperator
  }
derive instance newtypeCategoryWhereOr :: Newtype CategoryWhereOr _

newtype CategoriesDocAccess = CategoriesDocAccess
  { fields :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe CategoriesCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe CategoriesReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe CategoriesUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe CategoriesDeleteDocAccess)
  }
derive instance newtypeCategoriesDocAccess :: Newtype CategoriesDocAccess _

newtype CategoriesDocAccessFields = CategoriesDocAccessFields
  { name :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFieldsName)
  }
derive instance newtypeCategoriesDocAccessFields :: Newtype CategoriesDocAccessFields _

newtype CategoriesDocAccessFieldsName = CategoriesDocAccessFieldsName
  { create :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe CategoriesDocAccessFieldsNameDelete)
  }
derive instance newtypeCategoriesDocAccessFieldsName :: Newtype CategoriesDocAccessFieldsName _

newtype CategoriesDocAccessFieldsNameCreate = CategoriesDocAccessFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesDocAccessFieldsNameCreate :: Newtype CategoriesDocAccessFieldsNameCreate _

newtype CategoriesDocAccessFieldsNameRead = CategoriesDocAccessFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesDocAccessFieldsNameRead :: Newtype CategoriesDocAccessFieldsNameRead _

newtype CategoriesDocAccessFieldsNameUpdate = CategoriesDocAccessFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesDocAccessFieldsNameUpdate :: Newtype CategoriesDocAccessFieldsNameUpdate _

newtype CategoriesDocAccessFieldsNameDelete = CategoriesDocAccessFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesDocAccessFieldsNameDelete :: Newtype CategoriesDocAccessFieldsNameDelete _

newtype CategoriesCreateDocAccess = CategoriesCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesCreateDocAccess :: Newtype CategoriesCreateDocAccess _


 -- | The `JSONObject` scalar type represents JSON objects as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).
type JsonObject = Data.Argonaut.Core.Json -- Unknown scalar type. Add JsonObject to externalTypes in codegen options to override this behaviour

newtype CategoriesReadDocAccess = CategoriesReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesReadDocAccess :: Newtype CategoriesReadDocAccess _

newtype CategoriesUpdateDocAccess = CategoriesUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesUpdateDocAccess :: Newtype CategoriesUpdateDocAccess _

newtype CategoriesDeleteDocAccess = CategoriesDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesDeleteDocAccess :: Newtype CategoriesDeleteDocAccess _

newtype Post = Post
  { id :: 
    { 
    }
    -> (Maybe String)
  , title :: 
    { 
    }
    -> (Maybe String)
  , author :: 
    { locale :: LocaleInputType
    , fallbackLocale :: FallbackLocaleInputType
    }
    -> (Maybe (Array User))
  , translator :: 
    { locale :: LocaleInputType
    , fallbackLocale :: FallbackLocaleInputType
    }
    -> (Maybe (Array User))
  , publishedDate :: 
    { 
    }
    -> (Maybe DateTime)
  , category :: 
    { locale :: LocaleInputType
    , fallbackLocale :: FallbackLocaleInputType
    }
    -> (Maybe Category)
  , tags :: 
    { locale :: LocaleInputType
    , fallbackLocale :: FallbackLocaleInputType
    }
    -> (Maybe (Array Tag))
  , content :: 
    { depth :: Int
    }
    -> (Maybe Json)
  , status :: 
    { 
    }
    -> (Maybe PostStatus)
  , updatedAt :: 
    { 
    }
    -> (Maybe DateTime)
  , createdAt :: 
    { 
    }
    -> (Maybe DateTime)
  }
derive instance newtypePost :: Newtype Post _

newtype User = User
  { id :: 
    { 
    }
    -> (Maybe String)
  , name :: 
    { 
    }
    -> (Maybe String)
  , updatedAt :: 
    { 
    }
    -> (Maybe DateTime)
  , createdAt :: 
    { 
    }
    -> (Maybe DateTime)
  , email :: 
    { 
    }
    -> EmailAddress
  , resetPasswordToken :: 
    { 
    }
    -> (Maybe String)
  , resetPasswordExpiration :: 
    { 
    }
    -> (Maybe DateTime)
  , salt :: 
    { 
    }
    -> (Maybe String)
  , hash :: 
    { 
    }
    -> (Maybe String)
  , loginAttempts :: 
    { 
    }
    -> (Maybe Number)
  , lockUntil :: 
    { 
    }
    -> (Maybe DateTime)
  , password :: 
    { 
    }
    -> String
  }
derive instance newtypeUser :: Newtype User _


 -- | A date-time string at UTC, such as 2007-12-03T10:15:30Z, compliant with the `date-time` format outlined in section 5.6 of the RFC 3339 profile of the ISO 8601 standard for representation of dates and times using the Gregorian calendar.
type DateTime = Data.Argonaut.Core.Json -- Unknown scalar type. Add DateTime to externalTypes in codegen options to override this behaviour


 -- | A field whose value conforms to the standard internet email address format as specified in HTML Spec: https://html.spec.whatwg.org/multipage/input.html#valid-e-mail-address.
type EmailAddress = Data.Argonaut.Core.Json -- Unknown scalar type. Add EmailAddress to externalTypes in codegen options to override this behaviour

newtype Tag = Tag
  { id :: 
    { 
    }
    -> (Maybe String)
  , name :: 
    { 
    }
    -> (Maybe String)
  }
derive instance newtypeTag :: Newtype Tag _


 -- | The `JSON` scalar type represents JSON values as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).
type Json = Data.Argonaut.Core.Json -- Unknown scalar type. Add Json to externalTypes in codegen options to override this behaviour

newtype Posts = Posts
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe Post)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypePosts :: Newtype Posts _

newtype PostWhere = PostWhere
  { title :: PostTitleOperator
  , author :: PostAuthorOperator
  , translator :: PostTranslatorOperator
  , publishedDate :: PostPublishedDateOperator
  , category :: PostCategoryOperator
  , tags :: PostTagsOperator
  , content :: PostContentOperator
  , status :: PostStatusOperator
  , updatedAt :: PostUpdatedAtOperator
  , createdAt :: PostCreatedAtOperator
  , id :: PostIdOperator
  , "AND" :: (Array PostWhereAnd)
  , "OR" :: (Array PostWhereOr)
  }
derive instance newtypePostWhere :: Newtype PostWhere _

newtype PostTitleOperator = PostTitleOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypePostTitleOperator :: Newtype PostTitleOperator _

newtype PostAuthorOperator = PostAuthorOperator
  { equals :: Json
  , not_equals :: Json
  , in :: (Array Json)
  , not_in :: (Array Json)
  , all :: (Array Json)
  , exists :: Boolean
  }
derive instance newtypePostAuthorOperator :: Newtype PostAuthorOperator _

newtype PostTranslatorOperator = PostTranslatorOperator
  { equals :: Json
  , not_equals :: Json
  , in :: (Array Json)
  , not_in :: (Array Json)
  , all :: (Array Json)
  , exists :: Boolean
  }
derive instance newtypePostTranslatorOperator :: Newtype PostTranslatorOperator _

newtype PostPublishedDateOperator = PostPublishedDateOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypePostPublishedDateOperator :: Newtype PostPublishedDateOperator _

newtype PostCategoryOperator = PostCategoryOperator
  { equals :: Json
  , not_equals :: Json
  , in :: (Array Json)
  , not_in :: (Array Json)
  , all :: (Array Json)
  , exists :: Boolean
  }
derive instance newtypePostCategoryOperator :: Newtype PostCategoryOperator _

newtype PostTagsOperator = PostTagsOperator
  { equals :: Json
  , not_equals :: Json
  , in :: (Array Json)
  , not_in :: (Array Json)
  , all :: (Array Json)
  , exists :: Boolean
  }
derive instance newtypePostTagsOperator :: Newtype PostTagsOperator _

newtype PostContentOperator = PostContentOperator
  { equals :: Json
  , not_equals :: Json
  , like :: Json
  , contains :: Json
  , exists :: Boolean
  }
derive instance newtypePostContentOperator :: Newtype PostContentOperator _

newtype PostStatusOperator = PostStatusOperator
  { equals :: PostStatusInput
  , not_equals :: PostStatusInput
  , in :: (Array PostStatusInput)
  , not_in :: (Array PostStatusInput)
  , all :: (Array PostStatusInput)
  , exists :: Boolean
  }
derive instance newtypePostStatusOperator :: Newtype PostStatusOperator _

newtype PostUpdatedAtOperator = PostUpdatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypePostUpdatedAtOperator :: Newtype PostUpdatedAtOperator _

newtype PostCreatedAtOperator = PostCreatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypePostCreatedAtOperator :: Newtype PostCreatedAtOperator _

newtype PostIdOperator = PostIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypePostIdOperator :: Newtype PostIdOperator _

newtype PostWhereAnd = PostWhereAnd
  { title :: PostTitleOperator
  , author :: PostAuthorOperator
  , translator :: PostTranslatorOperator
  , publishedDate :: PostPublishedDateOperator
  , category :: PostCategoryOperator
  , tags :: PostTagsOperator
  , content :: PostContentOperator
  , status :: PostStatusOperator
  , updatedAt :: PostUpdatedAtOperator
  , createdAt :: PostCreatedAtOperator
  , id :: PostIdOperator
  }
derive instance newtypePostWhereAnd :: Newtype PostWhereAnd _

newtype PostWhereOr = PostWhereOr
  { title :: PostTitleOperator
  , author :: PostAuthorOperator
  , translator :: PostTranslatorOperator
  , publishedDate :: PostPublishedDateOperator
  , category :: PostCategoryOperator
  , tags :: PostTagsOperator
  , content :: PostContentOperator
  , status :: PostStatusOperator
  , updatedAt :: PostUpdatedAtOperator
  , createdAt :: PostCreatedAtOperator
  , id :: PostIdOperator
  }
derive instance newtypePostWhereOr :: Newtype PostWhereOr _

newtype PostsDocAccess = PostsDocAccess
  { fields :: 
    { 
    }
    -> (Maybe PostsDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe PostsCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe PostsReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe PostsUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe PostsDeleteDocAccess)
  }
derive instance newtypePostsDocAccess :: Newtype PostsDocAccess _

newtype PostsDocAccessFields = PostsDocAccessFields
  { title :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTitle)
  , author :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsAuthor)
  , translator :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTranslator)
  , publishedDate :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsPublishedDate)
  , category :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCategory)
  , tags :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTags)
  , content :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsContent)
  , status :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsStatus)
  , updatedAt :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCreatedAt)
  }
derive instance newtypePostsDocAccessFields :: Newtype PostsDocAccessFields _

newtype PostsDocAccessFieldsTitle = PostsDocAccessFieldsTitle
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTitleCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTitleRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTitleUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTitleDelete)
  }
derive instance newtypePostsDocAccessFieldsTitle :: Newtype PostsDocAccessFieldsTitle _

newtype PostsDocAccessFieldsTitleCreate = PostsDocAccessFieldsTitleCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTitleCreate :: Newtype PostsDocAccessFieldsTitleCreate _

newtype PostsDocAccessFieldsTitleRead = PostsDocAccessFieldsTitleRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTitleRead :: Newtype PostsDocAccessFieldsTitleRead _

newtype PostsDocAccessFieldsTitleUpdate = PostsDocAccessFieldsTitleUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTitleUpdate :: Newtype PostsDocAccessFieldsTitleUpdate _

newtype PostsDocAccessFieldsTitleDelete = PostsDocAccessFieldsTitleDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTitleDelete :: Newtype PostsDocAccessFieldsTitleDelete _

newtype PostsDocAccessFieldsAuthor = PostsDocAccessFieldsAuthor
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsAuthorCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsAuthorRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsAuthorUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsAuthorDelete)
  }
derive instance newtypePostsDocAccessFieldsAuthor :: Newtype PostsDocAccessFieldsAuthor _

newtype PostsDocAccessFieldsAuthorCreate = PostsDocAccessFieldsAuthorCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsAuthorCreate :: Newtype PostsDocAccessFieldsAuthorCreate _

newtype PostsDocAccessFieldsAuthorRead = PostsDocAccessFieldsAuthorRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsAuthorRead :: Newtype PostsDocAccessFieldsAuthorRead _

newtype PostsDocAccessFieldsAuthorUpdate = PostsDocAccessFieldsAuthorUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsAuthorUpdate :: Newtype PostsDocAccessFieldsAuthorUpdate _

newtype PostsDocAccessFieldsAuthorDelete = PostsDocAccessFieldsAuthorDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsAuthorDelete :: Newtype PostsDocAccessFieldsAuthorDelete _

newtype PostsDocAccessFieldsTranslator = PostsDocAccessFieldsTranslator
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTranslatorCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTranslatorRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTranslatorUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTranslatorDelete)
  }
derive instance newtypePostsDocAccessFieldsTranslator :: Newtype PostsDocAccessFieldsTranslator _

newtype PostsDocAccessFieldsTranslatorCreate = PostsDocAccessFieldsTranslatorCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTranslatorCreate :: Newtype PostsDocAccessFieldsTranslatorCreate _

newtype PostsDocAccessFieldsTranslatorRead = PostsDocAccessFieldsTranslatorRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTranslatorRead :: Newtype PostsDocAccessFieldsTranslatorRead _

newtype PostsDocAccessFieldsTranslatorUpdate = PostsDocAccessFieldsTranslatorUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTranslatorUpdate :: Newtype PostsDocAccessFieldsTranslatorUpdate _

newtype PostsDocAccessFieldsTranslatorDelete = PostsDocAccessFieldsTranslatorDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTranslatorDelete :: Newtype PostsDocAccessFieldsTranslatorDelete _

newtype PostsDocAccessFieldsPublishedDate = PostsDocAccessFieldsPublishedDate
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsPublishedDateCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsPublishedDateRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsPublishedDateUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsPublishedDateDelete)
  }
derive instance newtypePostsDocAccessFieldsPublishedDate :: Newtype PostsDocAccessFieldsPublishedDate _

newtype PostsDocAccessFieldsPublishedDateCreate = PostsDocAccessFieldsPublishedDateCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsPublishedDateCreate :: Newtype PostsDocAccessFieldsPublishedDateCreate _

newtype PostsDocAccessFieldsPublishedDateRead = PostsDocAccessFieldsPublishedDateRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsPublishedDateRead :: Newtype PostsDocAccessFieldsPublishedDateRead _

newtype PostsDocAccessFieldsPublishedDateUpdate = PostsDocAccessFieldsPublishedDateUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsPublishedDateUpdate :: Newtype PostsDocAccessFieldsPublishedDateUpdate _

newtype PostsDocAccessFieldsPublishedDateDelete = PostsDocAccessFieldsPublishedDateDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsPublishedDateDelete :: Newtype PostsDocAccessFieldsPublishedDateDelete _

newtype PostsDocAccessFieldsCategory = PostsDocAccessFieldsCategory
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCategoryCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCategoryRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCategoryUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCategoryDelete)
  }
derive instance newtypePostsDocAccessFieldsCategory :: Newtype PostsDocAccessFieldsCategory _

newtype PostsDocAccessFieldsCategoryCreate = PostsDocAccessFieldsCategoryCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCategoryCreate :: Newtype PostsDocAccessFieldsCategoryCreate _

newtype PostsDocAccessFieldsCategoryRead = PostsDocAccessFieldsCategoryRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCategoryRead :: Newtype PostsDocAccessFieldsCategoryRead _

newtype PostsDocAccessFieldsCategoryUpdate = PostsDocAccessFieldsCategoryUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCategoryUpdate :: Newtype PostsDocAccessFieldsCategoryUpdate _

newtype PostsDocAccessFieldsCategoryDelete = PostsDocAccessFieldsCategoryDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCategoryDelete :: Newtype PostsDocAccessFieldsCategoryDelete _

newtype PostsDocAccessFieldsTags = PostsDocAccessFieldsTags
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTagsCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTagsRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTagsUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsTagsDelete)
  }
derive instance newtypePostsDocAccessFieldsTags :: Newtype PostsDocAccessFieldsTags _

newtype PostsDocAccessFieldsTagsCreate = PostsDocAccessFieldsTagsCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTagsCreate :: Newtype PostsDocAccessFieldsTagsCreate _

newtype PostsDocAccessFieldsTagsRead = PostsDocAccessFieldsTagsRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTagsRead :: Newtype PostsDocAccessFieldsTagsRead _

newtype PostsDocAccessFieldsTagsUpdate = PostsDocAccessFieldsTagsUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTagsUpdate :: Newtype PostsDocAccessFieldsTagsUpdate _

newtype PostsDocAccessFieldsTagsDelete = PostsDocAccessFieldsTagsDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsTagsDelete :: Newtype PostsDocAccessFieldsTagsDelete _

newtype PostsDocAccessFieldsContent = PostsDocAccessFieldsContent
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsContentCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsContentRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsContentUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsContentDelete)
  }
derive instance newtypePostsDocAccessFieldsContent :: Newtype PostsDocAccessFieldsContent _

newtype PostsDocAccessFieldsContentCreate = PostsDocAccessFieldsContentCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsContentCreate :: Newtype PostsDocAccessFieldsContentCreate _

newtype PostsDocAccessFieldsContentRead = PostsDocAccessFieldsContentRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsContentRead :: Newtype PostsDocAccessFieldsContentRead _

newtype PostsDocAccessFieldsContentUpdate = PostsDocAccessFieldsContentUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsContentUpdate :: Newtype PostsDocAccessFieldsContentUpdate _

newtype PostsDocAccessFieldsContentDelete = PostsDocAccessFieldsContentDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsContentDelete :: Newtype PostsDocAccessFieldsContentDelete _

newtype PostsDocAccessFieldsStatus = PostsDocAccessFieldsStatus
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsStatusCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsStatusRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsStatusUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsStatusDelete)
  }
derive instance newtypePostsDocAccessFieldsStatus :: Newtype PostsDocAccessFieldsStatus _

newtype PostsDocAccessFieldsStatusCreate = PostsDocAccessFieldsStatusCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsStatusCreate :: Newtype PostsDocAccessFieldsStatusCreate _

newtype PostsDocAccessFieldsStatusRead = PostsDocAccessFieldsStatusRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsStatusRead :: Newtype PostsDocAccessFieldsStatusRead _

newtype PostsDocAccessFieldsStatusUpdate = PostsDocAccessFieldsStatusUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsStatusUpdate :: Newtype PostsDocAccessFieldsStatusUpdate _

newtype PostsDocAccessFieldsStatusDelete = PostsDocAccessFieldsStatusDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsStatusDelete :: Newtype PostsDocAccessFieldsStatusDelete _

newtype PostsDocAccessFieldsUpdatedAt = PostsDocAccessFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsUpdatedAtDelete)
  }
derive instance newtypePostsDocAccessFieldsUpdatedAt :: Newtype PostsDocAccessFieldsUpdatedAt _

newtype PostsDocAccessFieldsUpdatedAtCreate = PostsDocAccessFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsUpdatedAtCreate :: Newtype PostsDocAccessFieldsUpdatedAtCreate _

newtype PostsDocAccessFieldsUpdatedAtRead = PostsDocAccessFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsUpdatedAtRead :: Newtype PostsDocAccessFieldsUpdatedAtRead _

newtype PostsDocAccessFieldsUpdatedAtUpdate = PostsDocAccessFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsUpdatedAtUpdate :: Newtype PostsDocAccessFieldsUpdatedAtUpdate _

newtype PostsDocAccessFieldsUpdatedAtDelete = PostsDocAccessFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsUpdatedAtDelete :: Newtype PostsDocAccessFieldsUpdatedAtDelete _

newtype PostsDocAccessFieldsCreatedAt = PostsDocAccessFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsDocAccessFieldsCreatedAtDelete)
  }
derive instance newtypePostsDocAccessFieldsCreatedAt :: Newtype PostsDocAccessFieldsCreatedAt _

newtype PostsDocAccessFieldsCreatedAtCreate = PostsDocAccessFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCreatedAtCreate :: Newtype PostsDocAccessFieldsCreatedAtCreate _

newtype PostsDocAccessFieldsCreatedAtRead = PostsDocAccessFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCreatedAtRead :: Newtype PostsDocAccessFieldsCreatedAtRead _

newtype PostsDocAccessFieldsCreatedAtUpdate = PostsDocAccessFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCreatedAtUpdate :: Newtype PostsDocAccessFieldsCreatedAtUpdate _

newtype PostsDocAccessFieldsCreatedAtDelete = PostsDocAccessFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsDocAccessFieldsCreatedAtDelete :: Newtype PostsDocAccessFieldsCreatedAtDelete _

newtype PostsCreateDocAccess = PostsCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsCreateDocAccess :: Newtype PostsCreateDocAccess _

newtype PostsReadDocAccess = PostsReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsReadDocAccess :: Newtype PostsReadDocAccess _

newtype PostsUpdateDocAccess = PostsUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsUpdateDocAccess :: Newtype PostsUpdateDocAccess _

newtype PostsDeleteDocAccess = PostsDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsDeleteDocAccess :: Newtype PostsDeleteDocAccess _

newtype Tags = Tags
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe Tag)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypeTags :: Newtype Tags _

newtype TagWhere = TagWhere
  { name :: TagNameOperator
  , id :: TagIdOperator
  , "AND" :: (Array TagWhereAnd)
  , "OR" :: (Array TagWhereOr)
  }
derive instance newtypeTagWhere :: Newtype TagWhere _

newtype TagNameOperator = TagNameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeTagNameOperator :: Newtype TagNameOperator _

newtype TagIdOperator = TagIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeTagIdOperator :: Newtype TagIdOperator _

newtype TagWhereAnd = TagWhereAnd
  { name :: TagNameOperator
  , id :: TagIdOperator
  }
derive instance newtypeTagWhereAnd :: Newtype TagWhereAnd _

newtype TagWhereOr = TagWhereOr
  { name :: TagNameOperator
  , id :: TagIdOperator
  }
derive instance newtypeTagWhereOr :: Newtype TagWhereOr _

newtype TagsDocAccess = TagsDocAccess
  { fields :: 
    { 
    }
    -> (Maybe TagsDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe TagsCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe TagsReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe TagsUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe TagsDeleteDocAccess)
  }
derive instance newtypeTagsDocAccess :: Newtype TagsDocAccess _

newtype TagsDocAccessFields = TagsDocAccessFields
  { name :: 
    { 
    }
    -> (Maybe TagsDocAccessFieldsName)
  }
derive instance newtypeTagsDocAccessFields :: Newtype TagsDocAccessFields _

newtype TagsDocAccessFieldsName = TagsDocAccessFieldsName
  { create :: 
    { 
    }
    -> (Maybe TagsDocAccessFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe TagsDocAccessFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe TagsDocAccessFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe TagsDocAccessFieldsNameDelete)
  }
derive instance newtypeTagsDocAccessFieldsName :: Newtype TagsDocAccessFieldsName _

newtype TagsDocAccessFieldsNameCreate = TagsDocAccessFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsDocAccessFieldsNameCreate :: Newtype TagsDocAccessFieldsNameCreate _

newtype TagsDocAccessFieldsNameRead = TagsDocAccessFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsDocAccessFieldsNameRead :: Newtype TagsDocAccessFieldsNameRead _

newtype TagsDocAccessFieldsNameUpdate = TagsDocAccessFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsDocAccessFieldsNameUpdate :: Newtype TagsDocAccessFieldsNameUpdate _

newtype TagsDocAccessFieldsNameDelete = TagsDocAccessFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsDocAccessFieldsNameDelete :: Newtype TagsDocAccessFieldsNameDelete _

newtype TagsCreateDocAccess = TagsCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsCreateDocAccess :: Newtype TagsCreateDocAccess _

newtype TagsReadDocAccess = TagsReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsReadDocAccess :: Newtype TagsReadDocAccess _

newtype TagsUpdateDocAccess = TagsUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsUpdateDocAccess :: Newtype TagsUpdateDocAccess _

newtype TagsDeleteDocAccess = TagsDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsDeleteDocAccess :: Newtype TagsDeleteDocAccess _

newtype Users = Users
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe User)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypeUsers :: Newtype Users _

newtype UserWhere = UserWhere
  { name :: UserNameOperator
  , updatedAt :: UserUpdatedAtOperator
  , createdAt :: UserCreatedAtOperator
  , email :: UserEmailOperator
  , id :: UserIdOperator
  , "AND" :: (Array UserWhereAnd)
  , "OR" :: (Array UserWhereOr)
  }
derive instance newtypeUserWhere :: Newtype UserWhere _

newtype UserNameOperator = UserNameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeUserNameOperator :: Newtype UserNameOperator _

newtype UserUpdatedAtOperator = UserUpdatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypeUserUpdatedAtOperator :: Newtype UserUpdatedAtOperator _

newtype UserCreatedAtOperator = UserCreatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypeUserCreatedAtOperator :: Newtype UserCreatedAtOperator _

newtype UserEmailOperator = UserEmailOperator
  { equals :: EmailAddress
  , not_equals :: EmailAddress
  , like :: EmailAddress
  , contains :: EmailAddress
  , in :: (Array EmailAddress)
  , not_in :: (Array EmailAddress)
  , all :: (Array EmailAddress)
  }
derive instance newtypeUserEmailOperator :: Newtype UserEmailOperator _

newtype UserIdOperator = UserIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeUserIdOperator :: Newtype UserIdOperator _

newtype UserWhereAnd = UserWhereAnd
  { name :: UserNameOperator
  , updatedAt :: UserUpdatedAtOperator
  , createdAt :: UserCreatedAtOperator
  , email :: UserEmailOperator
  , id :: UserIdOperator
  }
derive instance newtypeUserWhereAnd :: Newtype UserWhereAnd _

newtype UserWhereOr = UserWhereOr
  { name :: UserNameOperator
  , updatedAt :: UserUpdatedAtOperator
  , createdAt :: UserCreatedAtOperator
  , email :: UserEmailOperator
  , id :: UserIdOperator
  }
derive instance newtypeUserWhereOr :: Newtype UserWhereOr _

newtype UsersDocAccess = UsersDocAccess
  { fields :: 
    { 
    }
    -> (Maybe UsersDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe UsersCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe UsersReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe UsersUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe UsersDeleteDocAccess)
  , unlock :: 
    { 
    }
    -> (Maybe UsersUnlockDocAccess)
  }
derive instance newtypeUsersDocAccess :: Newtype UsersDocAccess _

newtype UsersDocAccessFields = UsersDocAccessFields
  { name :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsName)
  , updatedAt :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsCreatedAt)
  , email :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsEmail)
  , password :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsPassword)
  }
derive instance newtypeUsersDocAccessFields :: Newtype UsersDocAccessFields _

newtype UsersDocAccessFieldsName = UsersDocAccessFieldsName
  { create :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsNameDelete)
  }
derive instance newtypeUsersDocAccessFieldsName :: Newtype UsersDocAccessFieldsName _

newtype UsersDocAccessFieldsNameCreate = UsersDocAccessFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsNameCreate :: Newtype UsersDocAccessFieldsNameCreate _

newtype UsersDocAccessFieldsNameRead = UsersDocAccessFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsNameRead :: Newtype UsersDocAccessFieldsNameRead _

newtype UsersDocAccessFieldsNameUpdate = UsersDocAccessFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsNameUpdate :: Newtype UsersDocAccessFieldsNameUpdate _

newtype UsersDocAccessFieldsNameDelete = UsersDocAccessFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsNameDelete :: Newtype UsersDocAccessFieldsNameDelete _

newtype UsersDocAccessFieldsUpdatedAt = UsersDocAccessFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsUpdatedAtDelete)
  }
derive instance newtypeUsersDocAccessFieldsUpdatedAt :: Newtype UsersDocAccessFieldsUpdatedAt _

newtype UsersDocAccessFieldsUpdatedAtCreate = UsersDocAccessFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsUpdatedAtCreate :: Newtype UsersDocAccessFieldsUpdatedAtCreate _

newtype UsersDocAccessFieldsUpdatedAtRead = UsersDocAccessFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsUpdatedAtRead :: Newtype UsersDocAccessFieldsUpdatedAtRead _

newtype UsersDocAccessFieldsUpdatedAtUpdate = UsersDocAccessFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsUpdatedAtUpdate :: Newtype UsersDocAccessFieldsUpdatedAtUpdate _

newtype UsersDocAccessFieldsUpdatedAtDelete = UsersDocAccessFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsUpdatedAtDelete :: Newtype UsersDocAccessFieldsUpdatedAtDelete _

newtype UsersDocAccessFieldsCreatedAt = UsersDocAccessFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsCreatedAtDelete)
  }
derive instance newtypeUsersDocAccessFieldsCreatedAt :: Newtype UsersDocAccessFieldsCreatedAt _

newtype UsersDocAccessFieldsCreatedAtCreate = UsersDocAccessFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsCreatedAtCreate :: Newtype UsersDocAccessFieldsCreatedAtCreate _

newtype UsersDocAccessFieldsCreatedAtRead = UsersDocAccessFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsCreatedAtRead :: Newtype UsersDocAccessFieldsCreatedAtRead _

newtype UsersDocAccessFieldsCreatedAtUpdate = UsersDocAccessFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsCreatedAtUpdate :: Newtype UsersDocAccessFieldsCreatedAtUpdate _

newtype UsersDocAccessFieldsCreatedAtDelete = UsersDocAccessFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsCreatedAtDelete :: Newtype UsersDocAccessFieldsCreatedAtDelete _

newtype UsersDocAccessFieldsEmail = UsersDocAccessFieldsEmail
  { create :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsEmailCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsEmailRead)
  , update :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsEmailUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsEmailDelete)
  }
derive instance newtypeUsersDocAccessFieldsEmail :: Newtype UsersDocAccessFieldsEmail _

newtype UsersDocAccessFieldsEmailCreate = UsersDocAccessFieldsEmailCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsEmailCreate :: Newtype UsersDocAccessFieldsEmailCreate _

newtype UsersDocAccessFieldsEmailRead = UsersDocAccessFieldsEmailRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsEmailRead :: Newtype UsersDocAccessFieldsEmailRead _

newtype UsersDocAccessFieldsEmailUpdate = UsersDocAccessFieldsEmailUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsEmailUpdate :: Newtype UsersDocAccessFieldsEmailUpdate _

newtype UsersDocAccessFieldsEmailDelete = UsersDocAccessFieldsEmailDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsEmailDelete :: Newtype UsersDocAccessFieldsEmailDelete _

newtype UsersDocAccessFieldsPassword = UsersDocAccessFieldsPassword
  { create :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsPasswordCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsPasswordRead)
  , update :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsPasswordUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersDocAccessFieldsPasswordDelete)
  }
derive instance newtypeUsersDocAccessFieldsPassword :: Newtype UsersDocAccessFieldsPassword _

newtype UsersDocAccessFieldsPasswordCreate = UsersDocAccessFieldsPasswordCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsPasswordCreate :: Newtype UsersDocAccessFieldsPasswordCreate _

newtype UsersDocAccessFieldsPasswordRead = UsersDocAccessFieldsPasswordRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsPasswordRead :: Newtype UsersDocAccessFieldsPasswordRead _

newtype UsersDocAccessFieldsPasswordUpdate = UsersDocAccessFieldsPasswordUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsPasswordUpdate :: Newtype UsersDocAccessFieldsPasswordUpdate _

newtype UsersDocAccessFieldsPasswordDelete = UsersDocAccessFieldsPasswordDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersDocAccessFieldsPasswordDelete :: Newtype UsersDocAccessFieldsPasswordDelete _

newtype UsersCreateDocAccess = UsersCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersCreateDocAccess :: Newtype UsersCreateDocAccess _

newtype UsersReadDocAccess = UsersReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersReadDocAccess :: Newtype UsersReadDocAccess _

newtype UsersUpdateDocAccess = UsersUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersUpdateDocAccess :: Newtype UsersUpdateDocAccess _

newtype UsersDeleteDocAccess = UsersDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersDeleteDocAccess :: Newtype UsersDeleteDocAccess _

newtype UsersUnlockDocAccess = UsersUnlockDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersUnlockDocAccess :: Newtype UsersUnlockDocAccess _

newtype UsersMe = UsersMe
  { collection :: 
    { 
    }
    -> (Maybe String)
  , exp :: 
    { 
    }
    -> (Maybe Int)
  , token :: 
    { 
    }
    -> (Maybe String)
  , user :: 
    { 
    }
    -> (Maybe User)
  }
derive instance newtypeUsersMe :: Newtype UsersMe _

newtype Media = Media
  { id :: 
    { 
    }
    -> (Maybe String)
  , updatedAt :: 
    { 
    }
    -> (Maybe DateTime)
  , createdAt :: 
    { 
    }
    -> (Maybe DateTime)
  , url :: 
    { 
    }
    -> (Maybe String)
  , filename :: 
    { 
    }
    -> (Maybe String)
  , mimeType :: 
    { 
    }
    -> (Maybe String)
  , filesize :: 
    { 
    }
    -> (Maybe Number)
  , width :: 
    { 
    }
    -> (Maybe Number)
  , height :: 
    { 
    }
    -> (Maybe Number)
  , sizes :: 
    { 
    }
    -> (Maybe MediaSizes)
  }
derive instance newtypeMedia :: Newtype Media _

newtype MediaSizes = MediaSizes
  { thumbnail :: 
    { 
    }
    -> (Maybe MediaSizesThumbnail)
  , sixteenByNineMedium :: 
    { 
    }
    -> (Maybe MediaSizesSixteenByNineMedium)
  }
derive instance newtypeMediaSizes :: Newtype MediaSizes _

newtype MediaSizesThumbnail = MediaSizesThumbnail
  { url :: 
    { 
    }
    -> (Maybe String)
  , width :: 
    { 
    }
    -> (Maybe Number)
  , height :: 
    { 
    }
    -> (Maybe Number)
  , mimeType :: 
    { 
    }
    -> (Maybe String)
  , filesize :: 
    { 
    }
    -> (Maybe Number)
  , filename :: 
    { 
    }
    -> (Maybe String)
  }
derive instance newtypeMediaSizesThumbnail :: Newtype MediaSizesThumbnail _

newtype MediaSizesSixteenByNineMedium = MediaSizesSixteenByNineMedium
  { url :: 
    { 
    }
    -> (Maybe String)
  , width :: 
    { 
    }
    -> (Maybe Number)
  , height :: 
    { 
    }
    -> (Maybe Number)
  , mimeType :: 
    { 
    }
    -> (Maybe String)
  , filesize :: 
    { 
    }
    -> (Maybe Number)
  , filename :: 
    { 
    }
    -> (Maybe String)
  }
derive instance newtypeMediaSizesSixteenByNineMedium :: Newtype MediaSizesSixteenByNineMedium _

newtype AllMedia = AllMedia
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe Media)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypeAllMedia :: Newtype AllMedia _

newtype MediaWhere = MediaWhere
  { updatedAt :: MediaUpdatedAtOperator
  , createdAt :: MediaCreatedAtOperator
  , url :: MediaUrlOperator
  , filename :: MediaFilenameOperator
  , mimeType :: MediaMimeTypeOperator
  , filesize :: MediaFilesizeOperator
  , width :: MediaWidthOperator
  , height :: MediaHeightOperator
  , sizes__thumbnail__url :: MediaSizesThumbnailUrlOperator
  , sizes__thumbnail__width :: MediaSizesThumbnailWidthOperator
  , sizes__thumbnail__height :: MediaSizesThumbnailHeightOperator
  , sizes__thumbnail__mimeType :: MediaSizesThumbnailMimeTypeOperator
  , sizes__thumbnail__filesize :: MediaSizesThumbnailFilesizeOperator
  , sizes__thumbnail__filename :: MediaSizesThumbnailFilenameOperator
  , sizes__sixteenByNineMedium__url :: MediaSizesSixteenByNineMediumUrlOperator
  , sizes__sixteenByNineMedium__width :: MediaSizesSixteenByNineMediumWidthOperator
  , sizes__sixteenByNineMedium__height :: MediaSizesSixteenByNineMediumHeightOperator
  , sizes__sixteenByNineMedium__mimeType :: MediaSizesSixteenByNineMediumMimeTypeOperator
  , sizes__sixteenByNineMedium__filesize :: MediaSizesSixteenByNineMediumFilesizeOperator
  , sizes__sixteenByNineMedium__filename :: MediaSizesSixteenByNineMediumFilenameOperator
  , id :: MediaIdOperator
  , "AND" :: (Array MediaWhereAnd)
  , "OR" :: (Array MediaWhereOr)
  }
derive instance newtypeMediaWhere :: Newtype MediaWhere _

newtype MediaUpdatedAtOperator = MediaUpdatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypeMediaUpdatedAtOperator :: Newtype MediaUpdatedAtOperator _

newtype MediaCreatedAtOperator = MediaCreatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypeMediaCreatedAtOperator :: Newtype MediaCreatedAtOperator _

newtype MediaUrlOperator = MediaUrlOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaUrlOperator :: Newtype MediaUrlOperator _

newtype MediaFilenameOperator = MediaFilenameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaFilenameOperator :: Newtype MediaFilenameOperator _

newtype MediaMimeTypeOperator = MediaMimeTypeOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaMimeTypeOperator :: Newtype MediaMimeTypeOperator _

newtype MediaFilesizeOperator = MediaFilesizeOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaFilesizeOperator :: Newtype MediaFilesizeOperator _

newtype MediaWidthOperator = MediaWidthOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaWidthOperator :: Newtype MediaWidthOperator _

newtype MediaHeightOperator = MediaHeightOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaHeightOperator :: Newtype MediaHeightOperator _

newtype MediaSizesThumbnailUrlOperator = MediaSizesThumbnailUrlOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailUrlOperator :: Newtype MediaSizesThumbnailUrlOperator _

newtype MediaSizesThumbnailWidthOperator = MediaSizesThumbnailWidthOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailWidthOperator :: Newtype MediaSizesThumbnailWidthOperator _

newtype MediaSizesThumbnailHeightOperator = MediaSizesThumbnailHeightOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailHeightOperator :: Newtype MediaSizesThumbnailHeightOperator _

newtype MediaSizesThumbnailMimeTypeOperator = MediaSizesThumbnailMimeTypeOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailMimeTypeOperator :: Newtype MediaSizesThumbnailMimeTypeOperator _

newtype MediaSizesThumbnailFilesizeOperator = MediaSizesThumbnailFilesizeOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailFilesizeOperator :: Newtype MediaSizesThumbnailFilesizeOperator _

newtype MediaSizesThumbnailFilenameOperator = MediaSizesThumbnailFilenameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesThumbnailFilenameOperator :: Newtype MediaSizesThumbnailFilenameOperator _

newtype MediaSizesSixteenByNineMediumUrlOperator = MediaSizesSixteenByNineMediumUrlOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumUrlOperator :: Newtype MediaSizesSixteenByNineMediumUrlOperator _

newtype MediaSizesSixteenByNineMediumWidthOperator = MediaSizesSixteenByNineMediumWidthOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumWidthOperator :: Newtype MediaSizesSixteenByNineMediumWidthOperator _

newtype MediaSizesSixteenByNineMediumHeightOperator = MediaSizesSixteenByNineMediumHeightOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumHeightOperator :: Newtype MediaSizesSixteenByNineMediumHeightOperator _

newtype MediaSizesSixteenByNineMediumMimeTypeOperator = MediaSizesSixteenByNineMediumMimeTypeOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumMimeTypeOperator :: Newtype MediaSizesSixteenByNineMediumMimeTypeOperator _

newtype MediaSizesSixteenByNineMediumFilesizeOperator = MediaSizesSixteenByNineMediumFilesizeOperator
  { equals :: Number
  , not_equals :: Number
  , greater_than_equal :: Number
  , greater_than :: Number
  , less_than_equal :: Number
  , less_than :: Number
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumFilesizeOperator :: Newtype MediaSizesSixteenByNineMediumFilesizeOperator _

newtype MediaSizesSixteenByNineMediumFilenameOperator = MediaSizesSixteenByNineMediumFilenameOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaSizesSixteenByNineMediumFilenameOperator :: Newtype MediaSizesSixteenByNineMediumFilenameOperator _

newtype MediaIdOperator = MediaIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypeMediaIdOperator :: Newtype MediaIdOperator _

newtype MediaWhereAnd = MediaWhereAnd
  { updatedAt :: MediaUpdatedAtOperator
  , createdAt :: MediaCreatedAtOperator
  , url :: MediaUrlOperator
  , filename :: MediaFilenameOperator
  , mimeType :: MediaMimeTypeOperator
  , filesize :: MediaFilesizeOperator
  , width :: MediaWidthOperator
  , height :: MediaHeightOperator
  , sizes__thumbnail__url :: MediaSizesThumbnailUrlOperator
  , sizes__thumbnail__width :: MediaSizesThumbnailWidthOperator
  , sizes__thumbnail__height :: MediaSizesThumbnailHeightOperator
  , sizes__thumbnail__mimeType :: MediaSizesThumbnailMimeTypeOperator
  , sizes__thumbnail__filesize :: MediaSizesThumbnailFilesizeOperator
  , sizes__thumbnail__filename :: MediaSizesThumbnailFilenameOperator
  , sizes__sixteenByNineMedium__url :: MediaSizesSixteenByNineMediumUrlOperator
  , sizes__sixteenByNineMedium__width :: MediaSizesSixteenByNineMediumWidthOperator
  , sizes__sixteenByNineMedium__height :: MediaSizesSixteenByNineMediumHeightOperator
  , sizes__sixteenByNineMedium__mimeType :: MediaSizesSixteenByNineMediumMimeTypeOperator
  , sizes__sixteenByNineMedium__filesize :: MediaSizesSixteenByNineMediumFilesizeOperator
  , sizes__sixteenByNineMedium__filename :: MediaSizesSixteenByNineMediumFilenameOperator
  , id :: MediaIdOperator
  }
derive instance newtypeMediaWhereAnd :: Newtype MediaWhereAnd _

newtype MediaWhereOr = MediaWhereOr
  { updatedAt :: MediaUpdatedAtOperator
  , createdAt :: MediaCreatedAtOperator
  , url :: MediaUrlOperator
  , filename :: MediaFilenameOperator
  , mimeType :: MediaMimeTypeOperator
  , filesize :: MediaFilesizeOperator
  , width :: MediaWidthOperator
  , height :: MediaHeightOperator
  , sizes__thumbnail__url :: MediaSizesThumbnailUrlOperator
  , sizes__thumbnail__width :: MediaSizesThumbnailWidthOperator
  , sizes__thumbnail__height :: MediaSizesThumbnailHeightOperator
  , sizes__thumbnail__mimeType :: MediaSizesThumbnailMimeTypeOperator
  , sizes__thumbnail__filesize :: MediaSizesThumbnailFilesizeOperator
  , sizes__thumbnail__filename :: MediaSizesThumbnailFilenameOperator
  , sizes__sixteenByNineMedium__url :: MediaSizesSixteenByNineMediumUrlOperator
  , sizes__sixteenByNineMedium__width :: MediaSizesSixteenByNineMediumWidthOperator
  , sizes__sixteenByNineMedium__height :: MediaSizesSixteenByNineMediumHeightOperator
  , sizes__sixteenByNineMedium__mimeType :: MediaSizesSixteenByNineMediumMimeTypeOperator
  , sizes__sixteenByNineMedium__filesize :: MediaSizesSixteenByNineMediumFilesizeOperator
  , sizes__sixteenByNineMedium__filename :: MediaSizesSixteenByNineMediumFilenameOperator
  , id :: MediaIdOperator
  }
derive instance newtypeMediaWhereOr :: Newtype MediaWhereOr _

newtype MediaDocAccess = MediaDocAccess
  { fields :: 
    { 
    }
    -> (Maybe MediaDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe MediaCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe MediaReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe MediaUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe MediaDeleteDocAccess)
  }
derive instance newtypeMediaDocAccess :: Newtype MediaDocAccess _

newtype MediaDocAccessFields = MediaDocAccessFields
  { updatedAt :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsCreatedAt)
  , url :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUrl)
  , filename :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilename)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilesize)
  , width :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsHeight)
  , sizes :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizes)
  }
derive instance newtypeMediaDocAccessFields :: Newtype MediaDocAccessFields _

newtype MediaDocAccessFieldsUpdatedAt = MediaDocAccessFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUpdatedAtDelete)
  }
derive instance newtypeMediaDocAccessFieldsUpdatedAt :: Newtype MediaDocAccessFieldsUpdatedAt _

newtype MediaDocAccessFieldsUpdatedAtCreate = MediaDocAccessFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUpdatedAtCreate :: Newtype MediaDocAccessFieldsUpdatedAtCreate _

newtype MediaDocAccessFieldsUpdatedAtRead = MediaDocAccessFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUpdatedAtRead :: Newtype MediaDocAccessFieldsUpdatedAtRead _

newtype MediaDocAccessFieldsUpdatedAtUpdate = MediaDocAccessFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUpdatedAtUpdate :: Newtype MediaDocAccessFieldsUpdatedAtUpdate _

newtype MediaDocAccessFieldsUpdatedAtDelete = MediaDocAccessFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUpdatedAtDelete :: Newtype MediaDocAccessFieldsUpdatedAtDelete _

newtype MediaDocAccessFieldsCreatedAt = MediaDocAccessFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsCreatedAtDelete)
  }
derive instance newtypeMediaDocAccessFieldsCreatedAt :: Newtype MediaDocAccessFieldsCreatedAt _

newtype MediaDocAccessFieldsCreatedAtCreate = MediaDocAccessFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsCreatedAtCreate :: Newtype MediaDocAccessFieldsCreatedAtCreate _

newtype MediaDocAccessFieldsCreatedAtRead = MediaDocAccessFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsCreatedAtRead :: Newtype MediaDocAccessFieldsCreatedAtRead _

newtype MediaDocAccessFieldsCreatedAtUpdate = MediaDocAccessFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsCreatedAtUpdate :: Newtype MediaDocAccessFieldsCreatedAtUpdate _

newtype MediaDocAccessFieldsCreatedAtDelete = MediaDocAccessFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsCreatedAtDelete :: Newtype MediaDocAccessFieldsCreatedAtDelete _

newtype MediaDocAccessFieldsUrl = MediaDocAccessFieldsUrl
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsUrlDelete)
  }
derive instance newtypeMediaDocAccessFieldsUrl :: Newtype MediaDocAccessFieldsUrl _

newtype MediaDocAccessFieldsUrlCreate = MediaDocAccessFieldsUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUrlCreate :: Newtype MediaDocAccessFieldsUrlCreate _

newtype MediaDocAccessFieldsUrlRead = MediaDocAccessFieldsUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUrlRead :: Newtype MediaDocAccessFieldsUrlRead _

newtype MediaDocAccessFieldsUrlUpdate = MediaDocAccessFieldsUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUrlUpdate :: Newtype MediaDocAccessFieldsUrlUpdate _

newtype MediaDocAccessFieldsUrlDelete = MediaDocAccessFieldsUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsUrlDelete :: Newtype MediaDocAccessFieldsUrlDelete _

newtype MediaDocAccessFieldsFilename = MediaDocAccessFieldsFilename
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilenameDelete)
  }
derive instance newtypeMediaDocAccessFieldsFilename :: Newtype MediaDocAccessFieldsFilename _

newtype MediaDocAccessFieldsFilenameCreate = MediaDocAccessFieldsFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilenameCreate :: Newtype MediaDocAccessFieldsFilenameCreate _

newtype MediaDocAccessFieldsFilenameRead = MediaDocAccessFieldsFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilenameRead :: Newtype MediaDocAccessFieldsFilenameRead _

newtype MediaDocAccessFieldsFilenameUpdate = MediaDocAccessFieldsFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilenameUpdate :: Newtype MediaDocAccessFieldsFilenameUpdate _

newtype MediaDocAccessFieldsFilenameDelete = MediaDocAccessFieldsFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilenameDelete :: Newtype MediaDocAccessFieldsFilenameDelete _

newtype MediaDocAccessFieldsMimeType = MediaDocAccessFieldsMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsMimeTypeDelete)
  }
derive instance newtypeMediaDocAccessFieldsMimeType :: Newtype MediaDocAccessFieldsMimeType _

newtype MediaDocAccessFieldsMimeTypeCreate = MediaDocAccessFieldsMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsMimeTypeCreate :: Newtype MediaDocAccessFieldsMimeTypeCreate _

newtype MediaDocAccessFieldsMimeTypeRead = MediaDocAccessFieldsMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsMimeTypeRead :: Newtype MediaDocAccessFieldsMimeTypeRead _

newtype MediaDocAccessFieldsMimeTypeUpdate = MediaDocAccessFieldsMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsMimeTypeUpdate :: Newtype MediaDocAccessFieldsMimeTypeUpdate _

newtype MediaDocAccessFieldsMimeTypeDelete = MediaDocAccessFieldsMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsMimeTypeDelete :: Newtype MediaDocAccessFieldsMimeTypeDelete _

newtype MediaDocAccessFieldsFilesize = MediaDocAccessFieldsFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsFilesizeDelete)
  }
derive instance newtypeMediaDocAccessFieldsFilesize :: Newtype MediaDocAccessFieldsFilesize _

newtype MediaDocAccessFieldsFilesizeCreate = MediaDocAccessFieldsFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilesizeCreate :: Newtype MediaDocAccessFieldsFilesizeCreate _

newtype MediaDocAccessFieldsFilesizeRead = MediaDocAccessFieldsFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilesizeRead :: Newtype MediaDocAccessFieldsFilesizeRead _

newtype MediaDocAccessFieldsFilesizeUpdate = MediaDocAccessFieldsFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilesizeUpdate :: Newtype MediaDocAccessFieldsFilesizeUpdate _

newtype MediaDocAccessFieldsFilesizeDelete = MediaDocAccessFieldsFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsFilesizeDelete :: Newtype MediaDocAccessFieldsFilesizeDelete _

newtype MediaDocAccessFieldsWidth = MediaDocAccessFieldsWidth
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsWidthDelete)
  }
derive instance newtypeMediaDocAccessFieldsWidth :: Newtype MediaDocAccessFieldsWidth _

newtype MediaDocAccessFieldsWidthCreate = MediaDocAccessFieldsWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsWidthCreate :: Newtype MediaDocAccessFieldsWidthCreate _

newtype MediaDocAccessFieldsWidthRead = MediaDocAccessFieldsWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsWidthRead :: Newtype MediaDocAccessFieldsWidthRead _

newtype MediaDocAccessFieldsWidthUpdate = MediaDocAccessFieldsWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsWidthUpdate :: Newtype MediaDocAccessFieldsWidthUpdate _

newtype MediaDocAccessFieldsWidthDelete = MediaDocAccessFieldsWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsWidthDelete :: Newtype MediaDocAccessFieldsWidthDelete _

newtype MediaDocAccessFieldsHeight = MediaDocAccessFieldsHeight
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsHeightDelete)
  }
derive instance newtypeMediaDocAccessFieldsHeight :: Newtype MediaDocAccessFieldsHeight _

newtype MediaDocAccessFieldsHeightCreate = MediaDocAccessFieldsHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsHeightCreate :: Newtype MediaDocAccessFieldsHeightCreate _

newtype MediaDocAccessFieldsHeightRead = MediaDocAccessFieldsHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsHeightRead :: Newtype MediaDocAccessFieldsHeightRead _

newtype MediaDocAccessFieldsHeightUpdate = MediaDocAccessFieldsHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsHeightUpdate :: Newtype MediaDocAccessFieldsHeightUpdate _

newtype MediaDocAccessFieldsHeightDelete = MediaDocAccessFieldsHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsHeightDelete :: Newtype MediaDocAccessFieldsHeightDelete _

newtype MediaDocAccessFieldsSizes = MediaDocAccessFieldsSizes
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesFields)
  }
derive instance newtypeMediaDocAccessFieldsSizes :: Newtype MediaDocAccessFieldsSizes _

newtype MediaDocAccessFieldsSizesCreate = MediaDocAccessFieldsSizesCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesCreate :: Newtype MediaDocAccessFieldsSizesCreate _

newtype MediaDocAccessFieldsSizesRead = MediaDocAccessFieldsSizesRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesRead :: Newtype MediaDocAccessFieldsSizesRead _

newtype MediaDocAccessFieldsSizesUpdate = MediaDocAccessFieldsSizesUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesUpdate :: Newtype MediaDocAccessFieldsSizesUpdate _

newtype MediaDocAccessFieldsSizesDelete = MediaDocAccessFieldsSizesDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesDelete :: Newtype MediaDocAccessFieldsSizesDelete _

newtype MediaDocAccessFieldsSizesFields = MediaDocAccessFieldsSizesFields
  { thumbnail :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnail)
  , sixteenByNineMedium :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMedium)
  }
derive instance newtypeMediaDocAccessFieldsSizesFields :: Newtype MediaDocAccessFieldsSizesFields _

newtype MediaDocAccessFieldsSizesThumbnail = MediaDocAccessFieldsSizesThumbnail
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFields)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnail :: Newtype MediaDocAccessFieldsSizesThumbnail _

newtype MediaDocAccessFieldsSizesThumbnailCreate = MediaDocAccessFieldsSizesThumbnailCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailCreate :: Newtype MediaDocAccessFieldsSizesThumbnailCreate _

newtype MediaDocAccessFieldsSizesThumbnailRead = MediaDocAccessFieldsSizesThumbnailRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailRead :: Newtype MediaDocAccessFieldsSizesThumbnailRead _

newtype MediaDocAccessFieldsSizesThumbnailUpdate = MediaDocAccessFieldsSizesThumbnailUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailUpdate _

newtype MediaDocAccessFieldsSizesThumbnailDelete = MediaDocAccessFieldsSizesThumbnailDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailDelete :: Newtype MediaDocAccessFieldsSizesThumbnailDelete _

newtype MediaDocAccessFieldsSizesThumbnailFields = MediaDocAccessFieldsSizesThumbnailFields
  { url :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUrl)
  , width :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailHeight)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilesize)
  , filename :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilename)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFields :: Newtype MediaDocAccessFieldsSizesThumbnailFields _

newtype MediaDocAccessFieldsSizesThumbnailUrl = MediaDocAccessFieldsSizesThumbnailUrl
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailUrlDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUrl :: Newtype MediaDocAccessFieldsSizesThumbnailUrl _

newtype MediaDocAccessFieldsSizesThumbnailUrlCreate = MediaDocAccessFieldsSizesThumbnailUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUrlCreate :: Newtype MediaDocAccessFieldsSizesThumbnailUrlCreate _

newtype MediaDocAccessFieldsSizesThumbnailUrlRead = MediaDocAccessFieldsSizesThumbnailUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUrlRead :: Newtype MediaDocAccessFieldsSizesThumbnailUrlRead _

newtype MediaDocAccessFieldsSizesThumbnailUrlUpdate = MediaDocAccessFieldsSizesThumbnailUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUrlUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailUrlUpdate _

newtype MediaDocAccessFieldsSizesThumbnailUrlDelete = MediaDocAccessFieldsSizesThumbnailUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailUrlDelete :: Newtype MediaDocAccessFieldsSizesThumbnailUrlDelete _

newtype MediaDocAccessFieldsSizesThumbnailWidth = MediaDocAccessFieldsSizesThumbnailWidth
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailWidthDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailWidth :: Newtype MediaDocAccessFieldsSizesThumbnailWidth _

newtype MediaDocAccessFieldsSizesThumbnailWidthCreate = MediaDocAccessFieldsSizesThumbnailWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailWidthCreate :: Newtype MediaDocAccessFieldsSizesThumbnailWidthCreate _

newtype MediaDocAccessFieldsSizesThumbnailWidthRead = MediaDocAccessFieldsSizesThumbnailWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailWidthRead :: Newtype MediaDocAccessFieldsSizesThumbnailWidthRead _

newtype MediaDocAccessFieldsSizesThumbnailWidthUpdate = MediaDocAccessFieldsSizesThumbnailWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailWidthUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailWidthUpdate _

newtype MediaDocAccessFieldsSizesThumbnailWidthDelete = MediaDocAccessFieldsSizesThumbnailWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailWidthDelete :: Newtype MediaDocAccessFieldsSizesThumbnailWidthDelete _

newtype MediaDocAccessFieldsSizesThumbnailHeight = MediaDocAccessFieldsSizesThumbnailHeight
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailHeightDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailHeight :: Newtype MediaDocAccessFieldsSizesThumbnailHeight _

newtype MediaDocAccessFieldsSizesThumbnailHeightCreate = MediaDocAccessFieldsSizesThumbnailHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailHeightCreate :: Newtype MediaDocAccessFieldsSizesThumbnailHeightCreate _

newtype MediaDocAccessFieldsSizesThumbnailHeightRead = MediaDocAccessFieldsSizesThumbnailHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailHeightRead :: Newtype MediaDocAccessFieldsSizesThumbnailHeightRead _

newtype MediaDocAccessFieldsSizesThumbnailHeightUpdate = MediaDocAccessFieldsSizesThumbnailHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailHeightUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailHeightUpdate _

newtype MediaDocAccessFieldsSizesThumbnailHeightDelete = MediaDocAccessFieldsSizesThumbnailHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailHeightDelete :: Newtype MediaDocAccessFieldsSizesThumbnailHeightDelete _

newtype MediaDocAccessFieldsSizesThumbnailMimeType = MediaDocAccessFieldsSizesThumbnailMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailMimeTypeDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailMimeType :: Newtype MediaDocAccessFieldsSizesThumbnailMimeType _

newtype MediaDocAccessFieldsSizesThumbnailMimeTypeCreate = MediaDocAccessFieldsSizesThumbnailMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailMimeTypeCreate :: Newtype MediaDocAccessFieldsSizesThumbnailMimeTypeCreate _

newtype MediaDocAccessFieldsSizesThumbnailMimeTypeRead = MediaDocAccessFieldsSizesThumbnailMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailMimeTypeRead :: Newtype MediaDocAccessFieldsSizesThumbnailMimeTypeRead _

newtype MediaDocAccessFieldsSizesThumbnailMimeTypeUpdate = MediaDocAccessFieldsSizesThumbnailMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailMimeTypeUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailMimeTypeUpdate _

newtype MediaDocAccessFieldsSizesThumbnailMimeTypeDelete = MediaDocAccessFieldsSizesThumbnailMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailMimeTypeDelete :: Newtype MediaDocAccessFieldsSizesThumbnailMimeTypeDelete _

newtype MediaDocAccessFieldsSizesThumbnailFilesize = MediaDocAccessFieldsSizesThumbnailFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilesizeDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilesize :: Newtype MediaDocAccessFieldsSizesThumbnailFilesize _

newtype MediaDocAccessFieldsSizesThumbnailFilesizeCreate = MediaDocAccessFieldsSizesThumbnailFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilesizeCreate :: Newtype MediaDocAccessFieldsSizesThumbnailFilesizeCreate _

newtype MediaDocAccessFieldsSizesThumbnailFilesizeRead = MediaDocAccessFieldsSizesThumbnailFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilesizeRead :: Newtype MediaDocAccessFieldsSizesThumbnailFilesizeRead _

newtype MediaDocAccessFieldsSizesThumbnailFilesizeUpdate = MediaDocAccessFieldsSizesThumbnailFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilesizeUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailFilesizeUpdate _

newtype MediaDocAccessFieldsSizesThumbnailFilesizeDelete = MediaDocAccessFieldsSizesThumbnailFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilesizeDelete :: Newtype MediaDocAccessFieldsSizesThumbnailFilesizeDelete _

newtype MediaDocAccessFieldsSizesThumbnailFilename = MediaDocAccessFieldsSizesThumbnailFilename
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesThumbnailFilenameDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilename :: Newtype MediaDocAccessFieldsSizesThumbnailFilename _

newtype MediaDocAccessFieldsSizesThumbnailFilenameCreate = MediaDocAccessFieldsSizesThumbnailFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilenameCreate :: Newtype MediaDocAccessFieldsSizesThumbnailFilenameCreate _

newtype MediaDocAccessFieldsSizesThumbnailFilenameRead = MediaDocAccessFieldsSizesThumbnailFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilenameRead :: Newtype MediaDocAccessFieldsSizesThumbnailFilenameRead _

newtype MediaDocAccessFieldsSizesThumbnailFilenameUpdate = MediaDocAccessFieldsSizesThumbnailFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilenameUpdate :: Newtype MediaDocAccessFieldsSizesThumbnailFilenameUpdate _

newtype MediaDocAccessFieldsSizesThumbnailFilenameDelete = MediaDocAccessFieldsSizesThumbnailFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesThumbnailFilenameDelete :: Newtype MediaDocAccessFieldsSizesThumbnailFilenameDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMedium = MediaDocAccessFieldsSizesSixteenByNineMedium
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFields)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMedium :: Newtype MediaDocAccessFieldsSizesSixteenByNineMedium _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumCreate = MediaDocAccessFieldsSizesSixteenByNineMediumCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumRead = MediaDocAccessFieldsSizesSixteenByNineMediumRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumDelete = MediaDocAccessFieldsSizesSixteenByNineMediumDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFields = MediaDocAccessFieldsSizesSixteenByNineMediumFields
  { url :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUrl)
  , width :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumHeight)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilesize)
  , filename :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilename)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFields :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFields _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrl = MediaDocAccessFieldsSizesSixteenByNineMediumUrl
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumUrlDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUrl :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrl _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlCreate = MediaDocAccessFieldsSizesSixteenByNineMediumUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUrlCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlRead = MediaDocAccessFieldsSizesSixteenByNineMediumUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUrlRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUrlUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlDelete = MediaDocAccessFieldsSizesSixteenByNineMediumUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumUrlDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumUrlDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidth = MediaDocAccessFieldsSizesSixteenByNineMediumWidth
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumWidthDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumWidth :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidth _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthCreate = MediaDocAccessFieldsSizesSixteenByNineMediumWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumWidthCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthRead = MediaDocAccessFieldsSizesSixteenByNineMediumWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumWidthRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumWidthUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthDelete = MediaDocAccessFieldsSizesSixteenByNineMediumWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumWidthDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumWidthDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeight = MediaDocAccessFieldsSizesSixteenByNineMediumHeight
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumHeightDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumHeight :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeight _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightCreate = MediaDocAccessFieldsSizesSixteenByNineMediumHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumHeightCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightRead = MediaDocAccessFieldsSizesSixteenByNineMediumHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumHeightRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumHeightUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightDelete = MediaDocAccessFieldsSizesSixteenByNineMediumHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumHeightDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumHeightDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeType = MediaDocAccessFieldsSizesSixteenByNineMediumMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumMimeType :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeType _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeCreate = MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeRead = MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeDelete = MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumMimeTypeDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesize = MediaDocAccessFieldsSizesSixteenByNineMediumFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilesize :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesize _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeCreate = MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilesizeCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeRead = MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilesizeRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilesizeUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeDelete = MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilesizeDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilesizeDelete _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilename = MediaDocAccessFieldsSizesSixteenByNineMediumFilename
  { create :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaDocAccessFieldsSizesSixteenByNineMediumFilenameDelete)
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilename :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilename _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameCreate = MediaDocAccessFieldsSizesSixteenByNineMediumFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilenameCreate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameCreate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameRead = MediaDocAccessFieldsSizesSixteenByNineMediumFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilenameRead :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameRead _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameUpdate = MediaDocAccessFieldsSizesSixteenByNineMediumFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilenameUpdate :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameUpdate _

newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameDelete = MediaDocAccessFieldsSizesSixteenByNineMediumFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaDocAccessFieldsSizesSixteenByNineMediumFilenameDelete :: Newtype MediaDocAccessFieldsSizesSixteenByNineMediumFilenameDelete _

newtype MediaCreateDocAccess = MediaCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaCreateDocAccess :: Newtype MediaCreateDocAccess _

newtype MediaReadDocAccess = MediaReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaReadDocAccess :: Newtype MediaReadDocAccess _

newtype MediaUpdateDocAccess = MediaUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaUpdateDocAccess :: Newtype MediaUpdateDocAccess _

newtype MediaDeleteDocAccess = MediaDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaDeleteDocAccess :: Newtype MediaDeleteDocAccess _

newtype PayloadPreference = PayloadPreference
  { id :: 
    { 
    }
    -> (Maybe String)
  , user :: 
    { locale :: LocaleInputType
    , fallbackLocale :: FallbackLocaleInputType
    }
    -> PayloadPreferenceUserRelationship
  , key :: 
    { 
    }
    -> (Maybe String)
  , value :: 
    { 
    }
    -> (Maybe Json)
  , updatedAt :: 
    { 
    }
    -> (Maybe DateTime)
  , createdAt :: 
    { 
    }
    -> (Maybe DateTime)
  }
derive instance newtypePayloadPreference :: Newtype PayloadPreference _

newtype PayloadPreferenceUserRelationship = PayloadPreferenceUserRelationship
  { relationTo :: 
    { 
    }
    -> (Maybe PayloadPreferenceUserRelationTo)
  , value :: 
    { 
    }
    -> (Maybe PayloadPreference_User)
  }
derive instance newtypePayloadPreferenceUserRelationship :: Newtype PayloadPreferenceUserRelationship _

type PayloadPreference_User = GqlUnion
  ( "User" :: User
  )

newtype PayloadPreferences = PayloadPreferences
  { docs :: 
    { 
    }
    -> (Maybe (Array (Maybe PayloadPreference)))
  , hasNextPage :: 
    { 
    }
    -> (Maybe Boolean)
  , hasPrevPage :: 
    { 
    }
    -> (Maybe Boolean)
  , limit :: 
    { 
    }
    -> (Maybe Int)
  , nextPage :: 
    { 
    }
    -> (Maybe Int)
  , offset :: 
    { 
    }
    -> (Maybe Int)
  , page :: 
    { 
    }
    -> (Maybe Int)
  , pagingCounter :: 
    { 
    }
    -> (Maybe Int)
  , prevPage :: 
    { 
    }
    -> (Maybe Int)
  , totalDocs :: 
    { 
    }
    -> (Maybe Int)
  , totalPages :: 
    { 
    }
    -> (Maybe Int)
  }
derive instance newtypePayloadPreferences :: Newtype PayloadPreferences _

newtype PayloadPreferenceWhere = PayloadPreferenceWhere
  { user :: PayloadPreferenceUserRelation
  , key :: PayloadPreferenceKeyOperator
  , value :: PayloadPreferenceValueOperator
  , updatedAt :: PayloadPreferenceUpdatedAtOperator
  , createdAt :: PayloadPreferenceCreatedAtOperator
  , id :: PayloadPreferenceIdOperator
  , "AND" :: (Array PayloadPreferenceWhereAnd)
  , "OR" :: (Array PayloadPreferenceWhereOr)
  }
derive instance newtypePayloadPreferenceWhere :: Newtype PayloadPreferenceWhere _

newtype PayloadPreferenceUserRelation = PayloadPreferenceUserRelation
  { relationTo :: PayloadPreferenceUserRelationRelationTo
  , value :: Json
  }
derive instance newtypePayloadPreferenceUserRelation :: Newtype PayloadPreferenceUserRelation _

newtype PayloadPreferenceKeyOperator = PayloadPreferenceKeyOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypePayloadPreferenceKeyOperator :: Newtype PayloadPreferenceKeyOperator _

newtype PayloadPreferenceValueOperator = PayloadPreferenceValueOperator
  { equals :: Json
  , not_equals :: Json
  , like :: Json
  , contains :: Json
  , within :: Json
  , intersects :: Json
  , exists :: Boolean
  }
derive instance newtypePayloadPreferenceValueOperator :: Newtype PayloadPreferenceValueOperator _

newtype PayloadPreferenceUpdatedAtOperator = PayloadPreferenceUpdatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypePayloadPreferenceUpdatedAtOperator :: Newtype PayloadPreferenceUpdatedAtOperator _

newtype PayloadPreferenceCreatedAtOperator = PayloadPreferenceCreatedAtOperator
  { equals :: DateTime
  , not_equals :: DateTime
  , greater_than_equal :: DateTime
  , greater_than :: DateTime
  , less_than_equal :: DateTime
  , less_than :: DateTime
  , like :: DateTime
  , exists :: Boolean
  }
derive instance newtypePayloadPreferenceCreatedAtOperator :: Newtype PayloadPreferenceCreatedAtOperator _

newtype PayloadPreferenceIdOperator = PayloadPreferenceIdOperator
  { equals :: String
  , not_equals :: String
  , like :: String
  , contains :: String
  , in :: (Array String)
  , not_in :: (Array String)
  , all :: (Array String)
  , exists :: Boolean
  }
derive instance newtypePayloadPreferenceIdOperator :: Newtype PayloadPreferenceIdOperator _

newtype PayloadPreferenceWhereAnd = PayloadPreferenceWhereAnd
  { user :: PayloadPreferenceUserRelation
  , key :: PayloadPreferenceKeyOperator
  , value :: PayloadPreferenceValueOperator
  , updatedAt :: PayloadPreferenceUpdatedAtOperator
  , createdAt :: PayloadPreferenceCreatedAtOperator
  , id :: PayloadPreferenceIdOperator
  }
derive instance newtypePayloadPreferenceWhereAnd :: Newtype PayloadPreferenceWhereAnd _

newtype PayloadPreferenceWhereOr = PayloadPreferenceWhereOr
  { user :: PayloadPreferenceUserRelation
  , key :: PayloadPreferenceKeyOperator
  , value :: PayloadPreferenceValueOperator
  , updatedAt :: PayloadPreferenceUpdatedAtOperator
  , createdAt :: PayloadPreferenceCreatedAtOperator
  , id :: PayloadPreferenceIdOperator
  }
derive instance newtypePayloadPreferenceWhereOr :: Newtype PayloadPreferenceWhereOr _

newtype PayloadPreferencesDocAccess = PayloadPreferencesDocAccess
  { fields :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFields)
  , create :: 
    { 
    }
    -> (Maybe PayloadPreferencesCreateDocAccess)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesReadDocAccess)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesUpdateDocAccess)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDeleteDocAccess)
  }
derive instance newtypePayloadPreferencesDocAccess :: Newtype PayloadPreferencesDocAccess _

newtype PayloadPreferencesDocAccessFields = PayloadPreferencesDocAccessFields
  { user :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUser)
  , key :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsKey)
  , value :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsValue)
  , updatedAt :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsCreatedAt)
  }
derive instance newtypePayloadPreferencesDocAccessFields :: Newtype PayloadPreferencesDocAccessFields _

newtype PayloadPreferencesDocAccessFieldsUser = PayloadPreferencesDocAccessFieldsUser
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUserCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUserRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUserUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUserDelete)
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUser :: Newtype PayloadPreferencesDocAccessFieldsUser _

newtype PayloadPreferencesDocAccessFieldsUserCreate = PayloadPreferencesDocAccessFieldsUserCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUserCreate :: Newtype PayloadPreferencesDocAccessFieldsUserCreate _

newtype PayloadPreferencesDocAccessFieldsUserRead = PayloadPreferencesDocAccessFieldsUserRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUserRead :: Newtype PayloadPreferencesDocAccessFieldsUserRead _

newtype PayloadPreferencesDocAccessFieldsUserUpdate = PayloadPreferencesDocAccessFieldsUserUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUserUpdate :: Newtype PayloadPreferencesDocAccessFieldsUserUpdate _

newtype PayloadPreferencesDocAccessFieldsUserDelete = PayloadPreferencesDocAccessFieldsUserDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUserDelete :: Newtype PayloadPreferencesDocAccessFieldsUserDelete _

newtype PayloadPreferencesDocAccessFieldsKey = PayloadPreferencesDocAccessFieldsKey
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsKeyCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsKeyRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsKeyUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsKeyDelete)
  }
derive instance newtypePayloadPreferencesDocAccessFieldsKey :: Newtype PayloadPreferencesDocAccessFieldsKey _

newtype PayloadPreferencesDocAccessFieldsKeyCreate = PayloadPreferencesDocAccessFieldsKeyCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsKeyCreate :: Newtype PayloadPreferencesDocAccessFieldsKeyCreate _

newtype PayloadPreferencesDocAccessFieldsKeyRead = PayloadPreferencesDocAccessFieldsKeyRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsKeyRead :: Newtype PayloadPreferencesDocAccessFieldsKeyRead _

newtype PayloadPreferencesDocAccessFieldsKeyUpdate = PayloadPreferencesDocAccessFieldsKeyUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsKeyUpdate :: Newtype PayloadPreferencesDocAccessFieldsKeyUpdate _

newtype PayloadPreferencesDocAccessFieldsKeyDelete = PayloadPreferencesDocAccessFieldsKeyDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsKeyDelete :: Newtype PayloadPreferencesDocAccessFieldsKeyDelete _

newtype PayloadPreferencesDocAccessFieldsValue = PayloadPreferencesDocAccessFieldsValue
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsValueCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsValueRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsValueUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsValueDelete)
  }
derive instance newtypePayloadPreferencesDocAccessFieldsValue :: Newtype PayloadPreferencesDocAccessFieldsValue _

newtype PayloadPreferencesDocAccessFieldsValueCreate = PayloadPreferencesDocAccessFieldsValueCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsValueCreate :: Newtype PayloadPreferencesDocAccessFieldsValueCreate _

newtype PayloadPreferencesDocAccessFieldsValueRead = PayloadPreferencesDocAccessFieldsValueRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsValueRead :: Newtype PayloadPreferencesDocAccessFieldsValueRead _

newtype PayloadPreferencesDocAccessFieldsValueUpdate = PayloadPreferencesDocAccessFieldsValueUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsValueUpdate :: Newtype PayloadPreferencesDocAccessFieldsValueUpdate _

newtype PayloadPreferencesDocAccessFieldsValueDelete = PayloadPreferencesDocAccessFieldsValueDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsValueDelete :: Newtype PayloadPreferencesDocAccessFieldsValueDelete _

newtype PayloadPreferencesDocAccessFieldsUpdatedAt = PayloadPreferencesDocAccessFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsUpdatedAtDelete)
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUpdatedAt :: Newtype PayloadPreferencesDocAccessFieldsUpdatedAt _

newtype PayloadPreferencesDocAccessFieldsUpdatedAtCreate = PayloadPreferencesDocAccessFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUpdatedAtCreate :: Newtype PayloadPreferencesDocAccessFieldsUpdatedAtCreate _

newtype PayloadPreferencesDocAccessFieldsUpdatedAtRead = PayloadPreferencesDocAccessFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUpdatedAtRead :: Newtype PayloadPreferencesDocAccessFieldsUpdatedAtRead _

newtype PayloadPreferencesDocAccessFieldsUpdatedAtUpdate = PayloadPreferencesDocAccessFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUpdatedAtUpdate :: Newtype PayloadPreferencesDocAccessFieldsUpdatedAtUpdate _

newtype PayloadPreferencesDocAccessFieldsUpdatedAtDelete = PayloadPreferencesDocAccessFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsUpdatedAtDelete :: Newtype PayloadPreferencesDocAccessFieldsUpdatedAtDelete _

newtype PayloadPreferencesDocAccessFieldsCreatedAt = PayloadPreferencesDocAccessFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDocAccessFieldsCreatedAtDelete)
  }
derive instance newtypePayloadPreferencesDocAccessFieldsCreatedAt :: Newtype PayloadPreferencesDocAccessFieldsCreatedAt _

newtype PayloadPreferencesDocAccessFieldsCreatedAtCreate = PayloadPreferencesDocAccessFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsCreatedAtCreate :: Newtype PayloadPreferencesDocAccessFieldsCreatedAtCreate _

newtype PayloadPreferencesDocAccessFieldsCreatedAtRead = PayloadPreferencesDocAccessFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsCreatedAtRead :: Newtype PayloadPreferencesDocAccessFieldsCreatedAtRead _

newtype PayloadPreferencesDocAccessFieldsCreatedAtUpdate = PayloadPreferencesDocAccessFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsCreatedAtUpdate :: Newtype PayloadPreferencesDocAccessFieldsCreatedAtUpdate _

newtype PayloadPreferencesDocAccessFieldsCreatedAtDelete = PayloadPreferencesDocAccessFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesDocAccessFieldsCreatedAtDelete :: Newtype PayloadPreferencesDocAccessFieldsCreatedAtDelete _

newtype PayloadPreferencesCreateDocAccess = PayloadPreferencesCreateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesCreateDocAccess :: Newtype PayloadPreferencesCreateDocAccess _

newtype PayloadPreferencesReadDocAccess = PayloadPreferencesReadDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesReadDocAccess :: Newtype PayloadPreferencesReadDocAccess _

newtype PayloadPreferencesUpdateDocAccess = PayloadPreferencesUpdateDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesUpdateDocAccess :: Newtype PayloadPreferencesUpdateDocAccess _

newtype PayloadPreferencesDeleteDocAccess = PayloadPreferencesDeleteDocAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesDeleteDocAccess :: Newtype PayloadPreferencesDeleteDocAccess _

newtype Access = Access
  { canAccessAdmin :: 
    { 
    }
    -> Boolean
  , categories :: 
    { 
    }
    -> (Maybe CategoriesAccess)
  , posts :: 
    { 
    }
    -> (Maybe PostsAccess)
  , tags :: 
    { 
    }
    -> (Maybe TagsAccess)
  , users :: 
    { 
    }
    -> (Maybe UsersAccess)
  , media :: 
    { 
    }
    -> (Maybe MediaAccess)
  , payload_preferences :: 
    { 
    }
    -> (Maybe PayloadPreferencesAccess)
  }
derive instance newtypeAccess :: Newtype Access _

newtype CategoriesAccess = CategoriesAccess
  { fields :: 
    { 
    }
    -> (Maybe CategoriesFields)
  , create :: 
    { 
    }
    -> (Maybe CategoriesCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe CategoriesReadAccess)
  , update :: 
    { 
    }
    -> (Maybe CategoriesUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe CategoriesDeleteAccess)
  }
derive instance newtypeCategoriesAccess :: Newtype CategoriesAccess _

newtype CategoriesFields = CategoriesFields
  { name :: 
    { 
    }
    -> (Maybe CategoriesFieldsName)
  }
derive instance newtypeCategoriesFields :: Newtype CategoriesFields _

newtype CategoriesFieldsName = CategoriesFieldsName
  { create :: 
    { 
    }
    -> (Maybe CategoriesFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe CategoriesFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe CategoriesFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe CategoriesFieldsNameDelete)
  }
derive instance newtypeCategoriesFieldsName :: Newtype CategoriesFieldsName _

newtype CategoriesFieldsNameCreate = CategoriesFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesFieldsNameCreate :: Newtype CategoriesFieldsNameCreate _

newtype CategoriesFieldsNameRead = CategoriesFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesFieldsNameRead :: Newtype CategoriesFieldsNameRead _

newtype CategoriesFieldsNameUpdate = CategoriesFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesFieldsNameUpdate :: Newtype CategoriesFieldsNameUpdate _

newtype CategoriesFieldsNameDelete = CategoriesFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeCategoriesFieldsNameDelete :: Newtype CategoriesFieldsNameDelete _

newtype CategoriesCreateAccess = CategoriesCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesCreateAccess :: Newtype CategoriesCreateAccess _

newtype CategoriesReadAccess = CategoriesReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesReadAccess :: Newtype CategoriesReadAccess _

newtype CategoriesUpdateAccess = CategoriesUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesUpdateAccess :: Newtype CategoriesUpdateAccess _

newtype CategoriesDeleteAccess = CategoriesDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeCategoriesDeleteAccess :: Newtype CategoriesDeleteAccess _

newtype PostsAccess = PostsAccess
  { fields :: 
    { 
    }
    -> (Maybe PostsFields)
  , create :: 
    { 
    }
    -> (Maybe PostsCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe PostsReadAccess)
  , update :: 
    { 
    }
    -> (Maybe PostsUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe PostsDeleteAccess)
  }
derive instance newtypePostsAccess :: Newtype PostsAccess _

newtype PostsFields = PostsFields
  { title :: 
    { 
    }
    -> (Maybe PostsFieldsTitle)
  , author :: 
    { 
    }
    -> (Maybe PostsFieldsAuthor)
  , translator :: 
    { 
    }
    -> (Maybe PostsFieldsTranslator)
  , publishedDate :: 
    { 
    }
    -> (Maybe PostsFieldsPublishedDate)
  , category :: 
    { 
    }
    -> (Maybe PostsFieldsCategory)
  , tags :: 
    { 
    }
    -> (Maybe PostsFieldsTags)
  , content :: 
    { 
    }
    -> (Maybe PostsFieldsContent)
  , status :: 
    { 
    }
    -> (Maybe PostsFieldsStatus)
  , updatedAt :: 
    { 
    }
    -> (Maybe PostsFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe PostsFieldsCreatedAt)
  }
derive instance newtypePostsFields :: Newtype PostsFields _

newtype PostsFieldsTitle = PostsFieldsTitle
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsTitleCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsTitleRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsTitleUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsTitleDelete)
  }
derive instance newtypePostsFieldsTitle :: Newtype PostsFieldsTitle _

newtype PostsFieldsTitleCreate = PostsFieldsTitleCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTitleCreate :: Newtype PostsFieldsTitleCreate _

newtype PostsFieldsTitleRead = PostsFieldsTitleRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTitleRead :: Newtype PostsFieldsTitleRead _

newtype PostsFieldsTitleUpdate = PostsFieldsTitleUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTitleUpdate :: Newtype PostsFieldsTitleUpdate _

newtype PostsFieldsTitleDelete = PostsFieldsTitleDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTitleDelete :: Newtype PostsFieldsTitleDelete _

newtype PostsFieldsAuthor = PostsFieldsAuthor
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsAuthorCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsAuthorRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsAuthorUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsAuthorDelete)
  }
derive instance newtypePostsFieldsAuthor :: Newtype PostsFieldsAuthor _

newtype PostsFieldsAuthorCreate = PostsFieldsAuthorCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsAuthorCreate :: Newtype PostsFieldsAuthorCreate _

newtype PostsFieldsAuthorRead = PostsFieldsAuthorRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsAuthorRead :: Newtype PostsFieldsAuthorRead _

newtype PostsFieldsAuthorUpdate = PostsFieldsAuthorUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsAuthorUpdate :: Newtype PostsFieldsAuthorUpdate _

newtype PostsFieldsAuthorDelete = PostsFieldsAuthorDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsAuthorDelete :: Newtype PostsFieldsAuthorDelete _

newtype PostsFieldsTranslator = PostsFieldsTranslator
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsTranslatorCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsTranslatorRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsTranslatorUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsTranslatorDelete)
  }
derive instance newtypePostsFieldsTranslator :: Newtype PostsFieldsTranslator _

newtype PostsFieldsTranslatorCreate = PostsFieldsTranslatorCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTranslatorCreate :: Newtype PostsFieldsTranslatorCreate _

newtype PostsFieldsTranslatorRead = PostsFieldsTranslatorRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTranslatorRead :: Newtype PostsFieldsTranslatorRead _

newtype PostsFieldsTranslatorUpdate = PostsFieldsTranslatorUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTranslatorUpdate :: Newtype PostsFieldsTranslatorUpdate _

newtype PostsFieldsTranslatorDelete = PostsFieldsTranslatorDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTranslatorDelete :: Newtype PostsFieldsTranslatorDelete _

newtype PostsFieldsPublishedDate = PostsFieldsPublishedDate
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsPublishedDateCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsPublishedDateRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsPublishedDateUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsPublishedDateDelete)
  }
derive instance newtypePostsFieldsPublishedDate :: Newtype PostsFieldsPublishedDate _

newtype PostsFieldsPublishedDateCreate = PostsFieldsPublishedDateCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsPublishedDateCreate :: Newtype PostsFieldsPublishedDateCreate _

newtype PostsFieldsPublishedDateRead = PostsFieldsPublishedDateRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsPublishedDateRead :: Newtype PostsFieldsPublishedDateRead _

newtype PostsFieldsPublishedDateUpdate = PostsFieldsPublishedDateUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsPublishedDateUpdate :: Newtype PostsFieldsPublishedDateUpdate _

newtype PostsFieldsPublishedDateDelete = PostsFieldsPublishedDateDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsPublishedDateDelete :: Newtype PostsFieldsPublishedDateDelete _

newtype PostsFieldsCategory = PostsFieldsCategory
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsCategoryCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsCategoryRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsCategoryUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsCategoryDelete)
  }
derive instance newtypePostsFieldsCategory :: Newtype PostsFieldsCategory _

newtype PostsFieldsCategoryCreate = PostsFieldsCategoryCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCategoryCreate :: Newtype PostsFieldsCategoryCreate _

newtype PostsFieldsCategoryRead = PostsFieldsCategoryRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCategoryRead :: Newtype PostsFieldsCategoryRead _

newtype PostsFieldsCategoryUpdate = PostsFieldsCategoryUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCategoryUpdate :: Newtype PostsFieldsCategoryUpdate _

newtype PostsFieldsCategoryDelete = PostsFieldsCategoryDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCategoryDelete :: Newtype PostsFieldsCategoryDelete _

newtype PostsFieldsTags = PostsFieldsTags
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsTagsCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsTagsRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsTagsUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsTagsDelete)
  }
derive instance newtypePostsFieldsTags :: Newtype PostsFieldsTags _

newtype PostsFieldsTagsCreate = PostsFieldsTagsCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTagsCreate :: Newtype PostsFieldsTagsCreate _

newtype PostsFieldsTagsRead = PostsFieldsTagsRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTagsRead :: Newtype PostsFieldsTagsRead _

newtype PostsFieldsTagsUpdate = PostsFieldsTagsUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTagsUpdate :: Newtype PostsFieldsTagsUpdate _

newtype PostsFieldsTagsDelete = PostsFieldsTagsDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsTagsDelete :: Newtype PostsFieldsTagsDelete _

newtype PostsFieldsContent = PostsFieldsContent
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsContentCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsContentRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsContentUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsContentDelete)
  }
derive instance newtypePostsFieldsContent :: Newtype PostsFieldsContent _

newtype PostsFieldsContentCreate = PostsFieldsContentCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsContentCreate :: Newtype PostsFieldsContentCreate _

newtype PostsFieldsContentRead = PostsFieldsContentRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsContentRead :: Newtype PostsFieldsContentRead _

newtype PostsFieldsContentUpdate = PostsFieldsContentUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsContentUpdate :: Newtype PostsFieldsContentUpdate _

newtype PostsFieldsContentDelete = PostsFieldsContentDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsContentDelete :: Newtype PostsFieldsContentDelete _

newtype PostsFieldsStatus = PostsFieldsStatus
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsStatusCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsStatusRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsStatusUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsStatusDelete)
  }
derive instance newtypePostsFieldsStatus :: Newtype PostsFieldsStatus _

newtype PostsFieldsStatusCreate = PostsFieldsStatusCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsStatusCreate :: Newtype PostsFieldsStatusCreate _

newtype PostsFieldsStatusRead = PostsFieldsStatusRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsStatusRead :: Newtype PostsFieldsStatusRead _

newtype PostsFieldsStatusUpdate = PostsFieldsStatusUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsStatusUpdate :: Newtype PostsFieldsStatusUpdate _

newtype PostsFieldsStatusDelete = PostsFieldsStatusDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsStatusDelete :: Newtype PostsFieldsStatusDelete _

newtype PostsFieldsUpdatedAt = PostsFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsUpdatedAtDelete)
  }
derive instance newtypePostsFieldsUpdatedAt :: Newtype PostsFieldsUpdatedAt _

newtype PostsFieldsUpdatedAtCreate = PostsFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsUpdatedAtCreate :: Newtype PostsFieldsUpdatedAtCreate _

newtype PostsFieldsUpdatedAtRead = PostsFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsUpdatedAtRead :: Newtype PostsFieldsUpdatedAtRead _

newtype PostsFieldsUpdatedAtUpdate = PostsFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsUpdatedAtUpdate :: Newtype PostsFieldsUpdatedAtUpdate _

newtype PostsFieldsUpdatedAtDelete = PostsFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsUpdatedAtDelete :: Newtype PostsFieldsUpdatedAtDelete _

newtype PostsFieldsCreatedAt = PostsFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe PostsFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PostsFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PostsFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PostsFieldsCreatedAtDelete)
  }
derive instance newtypePostsFieldsCreatedAt :: Newtype PostsFieldsCreatedAt _

newtype PostsFieldsCreatedAtCreate = PostsFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCreatedAtCreate :: Newtype PostsFieldsCreatedAtCreate _

newtype PostsFieldsCreatedAtRead = PostsFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCreatedAtRead :: Newtype PostsFieldsCreatedAtRead _

newtype PostsFieldsCreatedAtUpdate = PostsFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCreatedAtUpdate :: Newtype PostsFieldsCreatedAtUpdate _

newtype PostsFieldsCreatedAtDelete = PostsFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePostsFieldsCreatedAtDelete :: Newtype PostsFieldsCreatedAtDelete _

newtype PostsCreateAccess = PostsCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsCreateAccess :: Newtype PostsCreateAccess _

newtype PostsReadAccess = PostsReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsReadAccess :: Newtype PostsReadAccess _

newtype PostsUpdateAccess = PostsUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsUpdateAccess :: Newtype PostsUpdateAccess _

newtype PostsDeleteAccess = PostsDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePostsDeleteAccess :: Newtype PostsDeleteAccess _

newtype TagsAccess = TagsAccess
  { fields :: 
    { 
    }
    -> (Maybe TagsFields)
  , create :: 
    { 
    }
    -> (Maybe TagsCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe TagsReadAccess)
  , update :: 
    { 
    }
    -> (Maybe TagsUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe TagsDeleteAccess)
  }
derive instance newtypeTagsAccess :: Newtype TagsAccess _

newtype TagsFields = TagsFields
  { name :: 
    { 
    }
    -> (Maybe TagsFieldsName)
  }
derive instance newtypeTagsFields :: Newtype TagsFields _

newtype TagsFieldsName = TagsFieldsName
  { create :: 
    { 
    }
    -> (Maybe TagsFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe TagsFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe TagsFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe TagsFieldsNameDelete)
  }
derive instance newtypeTagsFieldsName :: Newtype TagsFieldsName _

newtype TagsFieldsNameCreate = TagsFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsFieldsNameCreate :: Newtype TagsFieldsNameCreate _

newtype TagsFieldsNameRead = TagsFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsFieldsNameRead :: Newtype TagsFieldsNameRead _

newtype TagsFieldsNameUpdate = TagsFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsFieldsNameUpdate :: Newtype TagsFieldsNameUpdate _

newtype TagsFieldsNameDelete = TagsFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeTagsFieldsNameDelete :: Newtype TagsFieldsNameDelete _

newtype TagsCreateAccess = TagsCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsCreateAccess :: Newtype TagsCreateAccess _

newtype TagsReadAccess = TagsReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsReadAccess :: Newtype TagsReadAccess _

newtype TagsUpdateAccess = TagsUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsUpdateAccess :: Newtype TagsUpdateAccess _

newtype TagsDeleteAccess = TagsDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeTagsDeleteAccess :: Newtype TagsDeleteAccess _

newtype UsersAccess = UsersAccess
  { fields :: 
    { 
    }
    -> (Maybe UsersFields)
  , create :: 
    { 
    }
    -> (Maybe UsersCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe UsersReadAccess)
  , update :: 
    { 
    }
    -> (Maybe UsersUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe UsersDeleteAccess)
  , unlock :: 
    { 
    }
    -> (Maybe UsersUnlockAccess)
  }
derive instance newtypeUsersAccess :: Newtype UsersAccess _

newtype UsersFields = UsersFields
  { name :: 
    { 
    }
    -> (Maybe UsersFieldsName)
  , updatedAt :: 
    { 
    }
    -> (Maybe UsersFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe UsersFieldsCreatedAt)
  , email :: 
    { 
    }
    -> (Maybe UsersFieldsEmail)
  , password :: 
    { 
    }
    -> (Maybe UsersFieldsPassword)
  }
derive instance newtypeUsersFields :: Newtype UsersFields _

newtype UsersFieldsName = UsersFieldsName
  { create :: 
    { 
    }
    -> (Maybe UsersFieldsNameCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersFieldsNameRead)
  , update :: 
    { 
    }
    -> (Maybe UsersFieldsNameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersFieldsNameDelete)
  }
derive instance newtypeUsersFieldsName :: Newtype UsersFieldsName _

newtype UsersFieldsNameCreate = UsersFieldsNameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsNameCreate :: Newtype UsersFieldsNameCreate _

newtype UsersFieldsNameRead = UsersFieldsNameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsNameRead :: Newtype UsersFieldsNameRead _

newtype UsersFieldsNameUpdate = UsersFieldsNameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsNameUpdate :: Newtype UsersFieldsNameUpdate _

newtype UsersFieldsNameDelete = UsersFieldsNameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsNameDelete :: Newtype UsersFieldsNameDelete _

newtype UsersFieldsUpdatedAt = UsersFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe UsersFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe UsersFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersFieldsUpdatedAtDelete)
  }
derive instance newtypeUsersFieldsUpdatedAt :: Newtype UsersFieldsUpdatedAt _

newtype UsersFieldsUpdatedAtCreate = UsersFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsUpdatedAtCreate :: Newtype UsersFieldsUpdatedAtCreate _

newtype UsersFieldsUpdatedAtRead = UsersFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsUpdatedAtRead :: Newtype UsersFieldsUpdatedAtRead _

newtype UsersFieldsUpdatedAtUpdate = UsersFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsUpdatedAtUpdate :: Newtype UsersFieldsUpdatedAtUpdate _

newtype UsersFieldsUpdatedAtDelete = UsersFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsUpdatedAtDelete :: Newtype UsersFieldsUpdatedAtDelete _

newtype UsersFieldsCreatedAt = UsersFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe UsersFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe UsersFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersFieldsCreatedAtDelete)
  }
derive instance newtypeUsersFieldsCreatedAt :: Newtype UsersFieldsCreatedAt _

newtype UsersFieldsCreatedAtCreate = UsersFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsCreatedAtCreate :: Newtype UsersFieldsCreatedAtCreate _

newtype UsersFieldsCreatedAtRead = UsersFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsCreatedAtRead :: Newtype UsersFieldsCreatedAtRead _

newtype UsersFieldsCreatedAtUpdate = UsersFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsCreatedAtUpdate :: Newtype UsersFieldsCreatedAtUpdate _

newtype UsersFieldsCreatedAtDelete = UsersFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsCreatedAtDelete :: Newtype UsersFieldsCreatedAtDelete _

newtype UsersFieldsEmail = UsersFieldsEmail
  { create :: 
    { 
    }
    -> (Maybe UsersFieldsEmailCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersFieldsEmailRead)
  , update :: 
    { 
    }
    -> (Maybe UsersFieldsEmailUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersFieldsEmailDelete)
  }
derive instance newtypeUsersFieldsEmail :: Newtype UsersFieldsEmail _

newtype UsersFieldsEmailCreate = UsersFieldsEmailCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsEmailCreate :: Newtype UsersFieldsEmailCreate _

newtype UsersFieldsEmailRead = UsersFieldsEmailRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsEmailRead :: Newtype UsersFieldsEmailRead _

newtype UsersFieldsEmailUpdate = UsersFieldsEmailUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsEmailUpdate :: Newtype UsersFieldsEmailUpdate _

newtype UsersFieldsEmailDelete = UsersFieldsEmailDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsEmailDelete :: Newtype UsersFieldsEmailDelete _

newtype UsersFieldsPassword = UsersFieldsPassword
  { create :: 
    { 
    }
    -> (Maybe UsersFieldsPasswordCreate)
  , read :: 
    { 
    }
    -> (Maybe UsersFieldsPasswordRead)
  , update :: 
    { 
    }
    -> (Maybe UsersFieldsPasswordUpdate)
  , delete :: 
    { 
    }
    -> (Maybe UsersFieldsPasswordDelete)
  }
derive instance newtypeUsersFieldsPassword :: Newtype UsersFieldsPassword _

newtype UsersFieldsPasswordCreate = UsersFieldsPasswordCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsPasswordCreate :: Newtype UsersFieldsPasswordCreate _

newtype UsersFieldsPasswordRead = UsersFieldsPasswordRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsPasswordRead :: Newtype UsersFieldsPasswordRead _

newtype UsersFieldsPasswordUpdate = UsersFieldsPasswordUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsPasswordUpdate :: Newtype UsersFieldsPasswordUpdate _

newtype UsersFieldsPasswordDelete = UsersFieldsPasswordDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeUsersFieldsPasswordDelete :: Newtype UsersFieldsPasswordDelete _

newtype UsersCreateAccess = UsersCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersCreateAccess :: Newtype UsersCreateAccess _

newtype UsersReadAccess = UsersReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersReadAccess :: Newtype UsersReadAccess _

newtype UsersUpdateAccess = UsersUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersUpdateAccess :: Newtype UsersUpdateAccess _

newtype UsersDeleteAccess = UsersDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersDeleteAccess :: Newtype UsersDeleteAccess _

newtype UsersUnlockAccess = UsersUnlockAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeUsersUnlockAccess :: Newtype UsersUnlockAccess _

newtype MediaAccess = MediaAccess
  { fields :: 
    { 
    }
    -> (Maybe MediaFields)
  , create :: 
    { 
    }
    -> (Maybe MediaCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe MediaReadAccess)
  , update :: 
    { 
    }
    -> (Maybe MediaUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe MediaDeleteAccess)
  }
derive instance newtypeMediaAccess :: Newtype MediaAccess _

newtype MediaFields = MediaFields
  { updatedAt :: 
    { 
    }
    -> (Maybe MediaFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe MediaFieldsCreatedAt)
  , url :: 
    { 
    }
    -> (Maybe MediaFieldsUrl)
  , filename :: 
    { 
    }
    -> (Maybe MediaFieldsFilename)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaFieldsMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaFieldsFilesize)
  , width :: 
    { 
    }
    -> (Maybe MediaFieldsWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaFieldsHeight)
  , sizes :: 
    { 
    }
    -> (Maybe MediaFieldsSizes)
  }
derive instance newtypeMediaFields :: Newtype MediaFields _

newtype MediaFieldsUpdatedAt = MediaFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsUpdatedAtDelete)
  }
derive instance newtypeMediaFieldsUpdatedAt :: Newtype MediaFieldsUpdatedAt _

newtype MediaFieldsUpdatedAtCreate = MediaFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUpdatedAtCreate :: Newtype MediaFieldsUpdatedAtCreate _

newtype MediaFieldsUpdatedAtRead = MediaFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUpdatedAtRead :: Newtype MediaFieldsUpdatedAtRead _

newtype MediaFieldsUpdatedAtUpdate = MediaFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUpdatedAtUpdate :: Newtype MediaFieldsUpdatedAtUpdate _

newtype MediaFieldsUpdatedAtDelete = MediaFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUpdatedAtDelete :: Newtype MediaFieldsUpdatedAtDelete _

newtype MediaFieldsCreatedAt = MediaFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsCreatedAtDelete)
  }
derive instance newtypeMediaFieldsCreatedAt :: Newtype MediaFieldsCreatedAt _

newtype MediaFieldsCreatedAtCreate = MediaFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsCreatedAtCreate :: Newtype MediaFieldsCreatedAtCreate _

newtype MediaFieldsCreatedAtRead = MediaFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsCreatedAtRead :: Newtype MediaFieldsCreatedAtRead _

newtype MediaFieldsCreatedAtUpdate = MediaFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsCreatedAtUpdate :: Newtype MediaFieldsCreatedAtUpdate _

newtype MediaFieldsCreatedAtDelete = MediaFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsCreatedAtDelete :: Newtype MediaFieldsCreatedAtDelete _

newtype MediaFieldsUrl = MediaFieldsUrl
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsUrlDelete)
  }
derive instance newtypeMediaFieldsUrl :: Newtype MediaFieldsUrl _

newtype MediaFieldsUrlCreate = MediaFieldsUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUrlCreate :: Newtype MediaFieldsUrlCreate _

newtype MediaFieldsUrlRead = MediaFieldsUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUrlRead :: Newtype MediaFieldsUrlRead _

newtype MediaFieldsUrlUpdate = MediaFieldsUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUrlUpdate :: Newtype MediaFieldsUrlUpdate _

newtype MediaFieldsUrlDelete = MediaFieldsUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsUrlDelete :: Newtype MediaFieldsUrlDelete _

newtype MediaFieldsFilename = MediaFieldsFilename
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsFilenameDelete)
  }
derive instance newtypeMediaFieldsFilename :: Newtype MediaFieldsFilename _

newtype MediaFieldsFilenameCreate = MediaFieldsFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilenameCreate :: Newtype MediaFieldsFilenameCreate _

newtype MediaFieldsFilenameRead = MediaFieldsFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilenameRead :: Newtype MediaFieldsFilenameRead _

newtype MediaFieldsFilenameUpdate = MediaFieldsFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilenameUpdate :: Newtype MediaFieldsFilenameUpdate _

newtype MediaFieldsFilenameDelete = MediaFieldsFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilenameDelete :: Newtype MediaFieldsFilenameDelete _

newtype MediaFieldsMimeType = MediaFieldsMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsMimeTypeDelete)
  }
derive instance newtypeMediaFieldsMimeType :: Newtype MediaFieldsMimeType _

newtype MediaFieldsMimeTypeCreate = MediaFieldsMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsMimeTypeCreate :: Newtype MediaFieldsMimeTypeCreate _

newtype MediaFieldsMimeTypeRead = MediaFieldsMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsMimeTypeRead :: Newtype MediaFieldsMimeTypeRead _

newtype MediaFieldsMimeTypeUpdate = MediaFieldsMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsMimeTypeUpdate :: Newtype MediaFieldsMimeTypeUpdate _

newtype MediaFieldsMimeTypeDelete = MediaFieldsMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsMimeTypeDelete :: Newtype MediaFieldsMimeTypeDelete _

newtype MediaFieldsFilesize = MediaFieldsFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsFilesizeDelete)
  }
derive instance newtypeMediaFieldsFilesize :: Newtype MediaFieldsFilesize _

newtype MediaFieldsFilesizeCreate = MediaFieldsFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilesizeCreate :: Newtype MediaFieldsFilesizeCreate _

newtype MediaFieldsFilesizeRead = MediaFieldsFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilesizeRead :: Newtype MediaFieldsFilesizeRead _

newtype MediaFieldsFilesizeUpdate = MediaFieldsFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilesizeUpdate :: Newtype MediaFieldsFilesizeUpdate _

newtype MediaFieldsFilesizeDelete = MediaFieldsFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsFilesizeDelete :: Newtype MediaFieldsFilesizeDelete _

newtype MediaFieldsWidth = MediaFieldsWidth
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsWidthDelete)
  }
derive instance newtypeMediaFieldsWidth :: Newtype MediaFieldsWidth _

newtype MediaFieldsWidthCreate = MediaFieldsWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsWidthCreate :: Newtype MediaFieldsWidthCreate _

newtype MediaFieldsWidthRead = MediaFieldsWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsWidthRead :: Newtype MediaFieldsWidthRead _

newtype MediaFieldsWidthUpdate = MediaFieldsWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsWidthUpdate :: Newtype MediaFieldsWidthUpdate _

newtype MediaFieldsWidthDelete = MediaFieldsWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsWidthDelete :: Newtype MediaFieldsWidthDelete _

newtype MediaFieldsHeight = MediaFieldsHeight
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsHeightDelete)
  }
derive instance newtypeMediaFieldsHeight :: Newtype MediaFieldsHeight _

newtype MediaFieldsHeightCreate = MediaFieldsHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsHeightCreate :: Newtype MediaFieldsHeightCreate _

newtype MediaFieldsHeightRead = MediaFieldsHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsHeightRead :: Newtype MediaFieldsHeightRead _

newtype MediaFieldsHeightUpdate = MediaFieldsHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsHeightUpdate :: Newtype MediaFieldsHeightUpdate _

newtype MediaFieldsHeightDelete = MediaFieldsHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsHeightDelete :: Newtype MediaFieldsHeightDelete _

newtype MediaFieldsSizes = MediaFieldsSizes
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaFieldsSizesFields)
  }
derive instance newtypeMediaFieldsSizes :: Newtype MediaFieldsSizes _

newtype MediaFieldsSizesCreate = MediaFieldsSizesCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesCreate :: Newtype MediaFieldsSizesCreate _

newtype MediaFieldsSizesRead = MediaFieldsSizesRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesRead :: Newtype MediaFieldsSizesRead _

newtype MediaFieldsSizesUpdate = MediaFieldsSizesUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesUpdate :: Newtype MediaFieldsSizesUpdate _

newtype MediaFieldsSizesDelete = MediaFieldsSizesDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesDelete :: Newtype MediaFieldsSizesDelete _

newtype MediaFieldsSizesFields = MediaFieldsSizesFields
  { thumbnail :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnail)
  , sixteenByNineMedium :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMedium)
  }
derive instance newtypeMediaFieldsSizesFields :: Newtype MediaFieldsSizesFields _

newtype MediaFieldsSizesThumbnail = MediaFieldsSizesThumbnail
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFields)
  }
derive instance newtypeMediaFieldsSizesThumbnail :: Newtype MediaFieldsSizesThumbnail _

newtype MediaFieldsSizesThumbnailCreate = MediaFieldsSizesThumbnailCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailCreate :: Newtype MediaFieldsSizesThumbnailCreate _

newtype MediaFieldsSizesThumbnailRead = MediaFieldsSizesThumbnailRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailRead :: Newtype MediaFieldsSizesThumbnailRead _

newtype MediaFieldsSizesThumbnailUpdate = MediaFieldsSizesThumbnailUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailUpdate :: Newtype MediaFieldsSizesThumbnailUpdate _

newtype MediaFieldsSizesThumbnailDelete = MediaFieldsSizesThumbnailDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailDelete :: Newtype MediaFieldsSizesThumbnailDelete _

newtype MediaFieldsSizesThumbnailFields = MediaFieldsSizesThumbnailFields
  { url :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUrl)
  , width :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailHeight)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilesize)
  , filename :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilename)
  }
derive instance newtypeMediaFieldsSizesThumbnailFields :: Newtype MediaFieldsSizesThumbnailFields _

newtype MediaFieldsSizesThumbnailUrl = MediaFieldsSizesThumbnailUrl
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailUrlDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailUrl :: Newtype MediaFieldsSizesThumbnailUrl _

newtype MediaFieldsSizesThumbnailUrlCreate = MediaFieldsSizesThumbnailUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailUrlCreate :: Newtype MediaFieldsSizesThumbnailUrlCreate _

newtype MediaFieldsSizesThumbnailUrlRead = MediaFieldsSizesThumbnailUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailUrlRead :: Newtype MediaFieldsSizesThumbnailUrlRead _

newtype MediaFieldsSizesThumbnailUrlUpdate = MediaFieldsSizesThumbnailUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailUrlUpdate :: Newtype MediaFieldsSizesThumbnailUrlUpdate _

newtype MediaFieldsSizesThumbnailUrlDelete = MediaFieldsSizesThumbnailUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailUrlDelete :: Newtype MediaFieldsSizesThumbnailUrlDelete _

newtype MediaFieldsSizesThumbnailWidth = MediaFieldsSizesThumbnailWidth
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailWidthDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailWidth :: Newtype MediaFieldsSizesThumbnailWidth _

newtype MediaFieldsSizesThumbnailWidthCreate = MediaFieldsSizesThumbnailWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailWidthCreate :: Newtype MediaFieldsSizesThumbnailWidthCreate _

newtype MediaFieldsSizesThumbnailWidthRead = MediaFieldsSizesThumbnailWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailWidthRead :: Newtype MediaFieldsSizesThumbnailWidthRead _

newtype MediaFieldsSizesThumbnailWidthUpdate = MediaFieldsSizesThumbnailWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailWidthUpdate :: Newtype MediaFieldsSizesThumbnailWidthUpdate _

newtype MediaFieldsSizesThumbnailWidthDelete = MediaFieldsSizesThumbnailWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailWidthDelete :: Newtype MediaFieldsSizesThumbnailWidthDelete _

newtype MediaFieldsSizesThumbnailHeight = MediaFieldsSizesThumbnailHeight
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailHeightDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailHeight :: Newtype MediaFieldsSizesThumbnailHeight _

newtype MediaFieldsSizesThumbnailHeightCreate = MediaFieldsSizesThumbnailHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailHeightCreate :: Newtype MediaFieldsSizesThumbnailHeightCreate _

newtype MediaFieldsSizesThumbnailHeightRead = MediaFieldsSizesThumbnailHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailHeightRead :: Newtype MediaFieldsSizesThumbnailHeightRead _

newtype MediaFieldsSizesThumbnailHeightUpdate = MediaFieldsSizesThumbnailHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailHeightUpdate :: Newtype MediaFieldsSizesThumbnailHeightUpdate _

newtype MediaFieldsSizesThumbnailHeightDelete = MediaFieldsSizesThumbnailHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailHeightDelete :: Newtype MediaFieldsSizesThumbnailHeightDelete _

newtype MediaFieldsSizesThumbnailMimeType = MediaFieldsSizesThumbnailMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailMimeTypeDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailMimeType :: Newtype MediaFieldsSizesThumbnailMimeType _

newtype MediaFieldsSizesThumbnailMimeTypeCreate = MediaFieldsSizesThumbnailMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailMimeTypeCreate :: Newtype MediaFieldsSizesThumbnailMimeTypeCreate _

newtype MediaFieldsSizesThumbnailMimeTypeRead = MediaFieldsSizesThumbnailMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailMimeTypeRead :: Newtype MediaFieldsSizesThumbnailMimeTypeRead _

newtype MediaFieldsSizesThumbnailMimeTypeUpdate = MediaFieldsSizesThumbnailMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailMimeTypeUpdate :: Newtype MediaFieldsSizesThumbnailMimeTypeUpdate _

newtype MediaFieldsSizesThumbnailMimeTypeDelete = MediaFieldsSizesThumbnailMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailMimeTypeDelete :: Newtype MediaFieldsSizesThumbnailMimeTypeDelete _

newtype MediaFieldsSizesThumbnailFilesize = MediaFieldsSizesThumbnailFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilesizeDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailFilesize :: Newtype MediaFieldsSizesThumbnailFilesize _

newtype MediaFieldsSizesThumbnailFilesizeCreate = MediaFieldsSizesThumbnailFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilesizeCreate :: Newtype MediaFieldsSizesThumbnailFilesizeCreate _

newtype MediaFieldsSizesThumbnailFilesizeRead = MediaFieldsSizesThumbnailFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilesizeRead :: Newtype MediaFieldsSizesThumbnailFilesizeRead _

newtype MediaFieldsSizesThumbnailFilesizeUpdate = MediaFieldsSizesThumbnailFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilesizeUpdate :: Newtype MediaFieldsSizesThumbnailFilesizeUpdate _

newtype MediaFieldsSizesThumbnailFilesizeDelete = MediaFieldsSizesThumbnailFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilesizeDelete :: Newtype MediaFieldsSizesThumbnailFilesizeDelete _

newtype MediaFieldsSizesThumbnailFilename = MediaFieldsSizesThumbnailFilename
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesThumbnailFilenameDelete)
  }
derive instance newtypeMediaFieldsSizesThumbnailFilename :: Newtype MediaFieldsSizesThumbnailFilename _

newtype MediaFieldsSizesThumbnailFilenameCreate = MediaFieldsSizesThumbnailFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilenameCreate :: Newtype MediaFieldsSizesThumbnailFilenameCreate _

newtype MediaFieldsSizesThumbnailFilenameRead = MediaFieldsSizesThumbnailFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilenameRead :: Newtype MediaFieldsSizesThumbnailFilenameRead _

newtype MediaFieldsSizesThumbnailFilenameUpdate = MediaFieldsSizesThumbnailFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilenameUpdate :: Newtype MediaFieldsSizesThumbnailFilenameUpdate _

newtype MediaFieldsSizesThumbnailFilenameDelete = MediaFieldsSizesThumbnailFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesThumbnailFilenameDelete :: Newtype MediaFieldsSizesThumbnailFilenameDelete _

newtype MediaFieldsSizesSixteenByNineMedium = MediaFieldsSizesSixteenByNineMedium
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumDelete)
  , fields :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFields)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMedium :: Newtype MediaFieldsSizesSixteenByNineMedium _

newtype MediaFieldsSizesSixteenByNineMediumCreate = MediaFieldsSizesSixteenByNineMediumCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumCreate :: Newtype MediaFieldsSizesSixteenByNineMediumCreate _

newtype MediaFieldsSizesSixteenByNineMediumRead = MediaFieldsSizesSixteenByNineMediumRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumRead :: Newtype MediaFieldsSizesSixteenByNineMediumRead _

newtype MediaFieldsSizesSixteenByNineMediumUpdate = MediaFieldsSizesSixteenByNineMediumUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumUpdate _

newtype MediaFieldsSizesSixteenByNineMediumDelete = MediaFieldsSizesSixteenByNineMediumDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumDelete :: Newtype MediaFieldsSizesSixteenByNineMediumDelete _

newtype MediaFieldsSizesSixteenByNineMediumFields = MediaFieldsSizesSixteenByNineMediumFields
  { url :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUrl)
  , width :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumWidth)
  , height :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumHeight)
  , mimeType :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumMimeType)
  , filesize :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilesize)
  , filename :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilename)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFields :: Newtype MediaFieldsSizesSixteenByNineMediumFields _

newtype MediaFieldsSizesSixteenByNineMediumUrl = MediaFieldsSizesSixteenByNineMediumUrl
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUrlCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUrlRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUrlUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumUrlDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUrl :: Newtype MediaFieldsSizesSixteenByNineMediumUrl _

newtype MediaFieldsSizesSixteenByNineMediumUrlCreate = MediaFieldsSizesSixteenByNineMediumUrlCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUrlCreate :: Newtype MediaFieldsSizesSixteenByNineMediumUrlCreate _

newtype MediaFieldsSizesSixteenByNineMediumUrlRead = MediaFieldsSizesSixteenByNineMediumUrlRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUrlRead :: Newtype MediaFieldsSizesSixteenByNineMediumUrlRead _

newtype MediaFieldsSizesSixteenByNineMediumUrlUpdate = MediaFieldsSizesSixteenByNineMediumUrlUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUrlUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumUrlUpdate _

newtype MediaFieldsSizesSixteenByNineMediumUrlDelete = MediaFieldsSizesSixteenByNineMediumUrlDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumUrlDelete :: Newtype MediaFieldsSizesSixteenByNineMediumUrlDelete _

newtype MediaFieldsSizesSixteenByNineMediumWidth = MediaFieldsSizesSixteenByNineMediumWidth
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumWidthCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumWidthRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumWidthUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumWidthDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumWidth :: Newtype MediaFieldsSizesSixteenByNineMediumWidth _

newtype MediaFieldsSizesSixteenByNineMediumWidthCreate = MediaFieldsSizesSixteenByNineMediumWidthCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumWidthCreate :: Newtype MediaFieldsSizesSixteenByNineMediumWidthCreate _

newtype MediaFieldsSizesSixteenByNineMediumWidthRead = MediaFieldsSizesSixteenByNineMediumWidthRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumWidthRead :: Newtype MediaFieldsSizesSixteenByNineMediumWidthRead _

newtype MediaFieldsSizesSixteenByNineMediumWidthUpdate = MediaFieldsSizesSixteenByNineMediumWidthUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumWidthUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumWidthUpdate _

newtype MediaFieldsSizesSixteenByNineMediumWidthDelete = MediaFieldsSizesSixteenByNineMediumWidthDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumWidthDelete :: Newtype MediaFieldsSizesSixteenByNineMediumWidthDelete _

newtype MediaFieldsSizesSixteenByNineMediumHeight = MediaFieldsSizesSixteenByNineMediumHeight
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumHeightCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumHeightRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumHeightUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumHeightDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumHeight :: Newtype MediaFieldsSizesSixteenByNineMediumHeight _

newtype MediaFieldsSizesSixteenByNineMediumHeightCreate = MediaFieldsSizesSixteenByNineMediumHeightCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumHeightCreate :: Newtype MediaFieldsSizesSixteenByNineMediumHeightCreate _

newtype MediaFieldsSizesSixteenByNineMediumHeightRead = MediaFieldsSizesSixteenByNineMediumHeightRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumHeightRead :: Newtype MediaFieldsSizesSixteenByNineMediumHeightRead _

newtype MediaFieldsSizesSixteenByNineMediumHeightUpdate = MediaFieldsSizesSixteenByNineMediumHeightUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumHeightUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumHeightUpdate _

newtype MediaFieldsSizesSixteenByNineMediumHeightDelete = MediaFieldsSizesSixteenByNineMediumHeightDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumHeightDelete :: Newtype MediaFieldsSizesSixteenByNineMediumHeightDelete _

newtype MediaFieldsSizesSixteenByNineMediumMimeType = MediaFieldsSizesSixteenByNineMediumMimeType
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumMimeTypeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumMimeTypeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumMimeTypeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumMimeTypeDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumMimeType :: Newtype MediaFieldsSizesSixteenByNineMediumMimeType _

newtype MediaFieldsSizesSixteenByNineMediumMimeTypeCreate = MediaFieldsSizesSixteenByNineMediumMimeTypeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumMimeTypeCreate :: Newtype MediaFieldsSizesSixteenByNineMediumMimeTypeCreate _

newtype MediaFieldsSizesSixteenByNineMediumMimeTypeRead = MediaFieldsSizesSixteenByNineMediumMimeTypeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumMimeTypeRead :: Newtype MediaFieldsSizesSixteenByNineMediumMimeTypeRead _

newtype MediaFieldsSizesSixteenByNineMediumMimeTypeUpdate = MediaFieldsSizesSixteenByNineMediumMimeTypeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumMimeTypeUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumMimeTypeUpdate _

newtype MediaFieldsSizesSixteenByNineMediumMimeTypeDelete = MediaFieldsSizesSixteenByNineMediumMimeTypeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumMimeTypeDelete :: Newtype MediaFieldsSizesSixteenByNineMediumMimeTypeDelete _

newtype MediaFieldsSizesSixteenByNineMediumFilesize = MediaFieldsSizesSixteenByNineMediumFilesize
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilesizeCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilesizeRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilesizeUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilesizeDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilesize :: Newtype MediaFieldsSizesSixteenByNineMediumFilesize _

newtype MediaFieldsSizesSixteenByNineMediumFilesizeCreate = MediaFieldsSizesSixteenByNineMediumFilesizeCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilesizeCreate :: Newtype MediaFieldsSizesSixteenByNineMediumFilesizeCreate _

newtype MediaFieldsSizesSixteenByNineMediumFilesizeRead = MediaFieldsSizesSixteenByNineMediumFilesizeRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilesizeRead :: Newtype MediaFieldsSizesSixteenByNineMediumFilesizeRead _

newtype MediaFieldsSizesSixteenByNineMediumFilesizeUpdate = MediaFieldsSizesSixteenByNineMediumFilesizeUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilesizeUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumFilesizeUpdate _

newtype MediaFieldsSizesSixteenByNineMediumFilesizeDelete = MediaFieldsSizesSixteenByNineMediumFilesizeDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilesizeDelete :: Newtype MediaFieldsSizesSixteenByNineMediumFilesizeDelete _

newtype MediaFieldsSizesSixteenByNineMediumFilename = MediaFieldsSizesSixteenByNineMediumFilename
  { create :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilenameCreate)
  , read :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilenameRead)
  , update :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilenameUpdate)
  , delete :: 
    { 
    }
    -> (Maybe MediaFieldsSizesSixteenByNineMediumFilenameDelete)
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilename :: Newtype MediaFieldsSizesSixteenByNineMediumFilename _

newtype MediaFieldsSizesSixteenByNineMediumFilenameCreate = MediaFieldsSizesSixteenByNineMediumFilenameCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilenameCreate :: Newtype MediaFieldsSizesSixteenByNineMediumFilenameCreate _

newtype MediaFieldsSizesSixteenByNineMediumFilenameRead = MediaFieldsSizesSixteenByNineMediumFilenameRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilenameRead :: Newtype MediaFieldsSizesSixteenByNineMediumFilenameRead _

newtype MediaFieldsSizesSixteenByNineMediumFilenameUpdate = MediaFieldsSizesSixteenByNineMediumFilenameUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilenameUpdate :: Newtype MediaFieldsSizesSixteenByNineMediumFilenameUpdate _

newtype MediaFieldsSizesSixteenByNineMediumFilenameDelete = MediaFieldsSizesSixteenByNineMediumFilenameDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypeMediaFieldsSizesSixteenByNineMediumFilenameDelete :: Newtype MediaFieldsSizesSixteenByNineMediumFilenameDelete _

newtype MediaCreateAccess = MediaCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaCreateAccess :: Newtype MediaCreateAccess _

newtype MediaReadAccess = MediaReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaReadAccess :: Newtype MediaReadAccess _

newtype MediaUpdateAccess = MediaUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaUpdateAccess :: Newtype MediaUpdateAccess _

newtype MediaDeleteAccess = MediaDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypeMediaDeleteAccess :: Newtype MediaDeleteAccess _

newtype PayloadPreferencesAccess = PayloadPreferencesAccess
  { fields :: 
    { 
    }
    -> (Maybe PayloadPreferencesFields)
  , create :: 
    { 
    }
    -> (Maybe PayloadPreferencesCreateAccess)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesReadAccess)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesUpdateAccess)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesDeleteAccess)
  }
derive instance newtypePayloadPreferencesAccess :: Newtype PayloadPreferencesAccess _

newtype PayloadPreferencesFields = PayloadPreferencesFields
  { user :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUser)
  , key :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsKey)
  , value :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsValue)
  , updatedAt :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUpdatedAt)
  , createdAt :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsCreatedAt)
  }
derive instance newtypePayloadPreferencesFields :: Newtype PayloadPreferencesFields _

newtype PayloadPreferencesFieldsUser = PayloadPreferencesFieldsUser
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUserCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUserRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUserUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUserDelete)
  }
derive instance newtypePayloadPreferencesFieldsUser :: Newtype PayloadPreferencesFieldsUser _

newtype PayloadPreferencesFieldsUserCreate = PayloadPreferencesFieldsUserCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUserCreate :: Newtype PayloadPreferencesFieldsUserCreate _

newtype PayloadPreferencesFieldsUserRead = PayloadPreferencesFieldsUserRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUserRead :: Newtype PayloadPreferencesFieldsUserRead _

newtype PayloadPreferencesFieldsUserUpdate = PayloadPreferencesFieldsUserUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUserUpdate :: Newtype PayloadPreferencesFieldsUserUpdate _

newtype PayloadPreferencesFieldsUserDelete = PayloadPreferencesFieldsUserDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUserDelete :: Newtype PayloadPreferencesFieldsUserDelete _

newtype PayloadPreferencesFieldsKey = PayloadPreferencesFieldsKey
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsKeyCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsKeyRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsKeyUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsKeyDelete)
  }
derive instance newtypePayloadPreferencesFieldsKey :: Newtype PayloadPreferencesFieldsKey _

newtype PayloadPreferencesFieldsKeyCreate = PayloadPreferencesFieldsKeyCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsKeyCreate :: Newtype PayloadPreferencesFieldsKeyCreate _

newtype PayloadPreferencesFieldsKeyRead = PayloadPreferencesFieldsKeyRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsKeyRead :: Newtype PayloadPreferencesFieldsKeyRead _

newtype PayloadPreferencesFieldsKeyUpdate = PayloadPreferencesFieldsKeyUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsKeyUpdate :: Newtype PayloadPreferencesFieldsKeyUpdate _

newtype PayloadPreferencesFieldsKeyDelete = PayloadPreferencesFieldsKeyDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsKeyDelete :: Newtype PayloadPreferencesFieldsKeyDelete _

newtype PayloadPreferencesFieldsValue = PayloadPreferencesFieldsValue
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsValueCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsValueRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsValueUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsValueDelete)
  }
derive instance newtypePayloadPreferencesFieldsValue :: Newtype PayloadPreferencesFieldsValue _

newtype PayloadPreferencesFieldsValueCreate = PayloadPreferencesFieldsValueCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsValueCreate :: Newtype PayloadPreferencesFieldsValueCreate _

newtype PayloadPreferencesFieldsValueRead = PayloadPreferencesFieldsValueRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsValueRead :: Newtype PayloadPreferencesFieldsValueRead _

newtype PayloadPreferencesFieldsValueUpdate = PayloadPreferencesFieldsValueUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsValueUpdate :: Newtype PayloadPreferencesFieldsValueUpdate _

newtype PayloadPreferencesFieldsValueDelete = PayloadPreferencesFieldsValueDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsValueDelete :: Newtype PayloadPreferencesFieldsValueDelete _

newtype PayloadPreferencesFieldsUpdatedAt = PayloadPreferencesFieldsUpdatedAt
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUpdatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUpdatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUpdatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsUpdatedAtDelete)
  }
derive instance newtypePayloadPreferencesFieldsUpdatedAt :: Newtype PayloadPreferencesFieldsUpdatedAt _

newtype PayloadPreferencesFieldsUpdatedAtCreate = PayloadPreferencesFieldsUpdatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUpdatedAtCreate :: Newtype PayloadPreferencesFieldsUpdatedAtCreate _

newtype PayloadPreferencesFieldsUpdatedAtRead = PayloadPreferencesFieldsUpdatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUpdatedAtRead :: Newtype PayloadPreferencesFieldsUpdatedAtRead _

newtype PayloadPreferencesFieldsUpdatedAtUpdate = PayloadPreferencesFieldsUpdatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUpdatedAtUpdate :: Newtype PayloadPreferencesFieldsUpdatedAtUpdate _

newtype PayloadPreferencesFieldsUpdatedAtDelete = PayloadPreferencesFieldsUpdatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsUpdatedAtDelete :: Newtype PayloadPreferencesFieldsUpdatedAtDelete _

newtype PayloadPreferencesFieldsCreatedAt = PayloadPreferencesFieldsCreatedAt
  { create :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsCreatedAtCreate)
  , read :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsCreatedAtRead)
  , update :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsCreatedAtUpdate)
  , delete :: 
    { 
    }
    -> (Maybe PayloadPreferencesFieldsCreatedAtDelete)
  }
derive instance newtypePayloadPreferencesFieldsCreatedAt :: Newtype PayloadPreferencesFieldsCreatedAt _

newtype PayloadPreferencesFieldsCreatedAtCreate = PayloadPreferencesFieldsCreatedAtCreate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsCreatedAtCreate :: Newtype PayloadPreferencesFieldsCreatedAtCreate _

newtype PayloadPreferencesFieldsCreatedAtRead = PayloadPreferencesFieldsCreatedAtRead
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsCreatedAtRead :: Newtype PayloadPreferencesFieldsCreatedAtRead _

newtype PayloadPreferencesFieldsCreatedAtUpdate = PayloadPreferencesFieldsCreatedAtUpdate
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsCreatedAtUpdate :: Newtype PayloadPreferencesFieldsCreatedAtUpdate _

newtype PayloadPreferencesFieldsCreatedAtDelete = PayloadPreferencesFieldsCreatedAtDelete
  { permission :: 
    { 
    }
    -> Boolean
  }
derive instance newtypePayloadPreferencesFieldsCreatedAtDelete :: Newtype PayloadPreferencesFieldsCreatedAtDelete _

newtype PayloadPreferencesCreateAccess = PayloadPreferencesCreateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesCreateAccess :: Newtype PayloadPreferencesCreateAccess _

newtype PayloadPreferencesReadAccess = PayloadPreferencesReadAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesReadAccess :: Newtype PayloadPreferencesReadAccess _

newtype PayloadPreferencesUpdateAccess = PayloadPreferencesUpdateAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesUpdateAccess :: Newtype PayloadPreferencesUpdateAccess _

newtype PayloadPreferencesDeleteAccess = PayloadPreferencesDeleteAccess
  { permission :: 
    { 
    }
    -> Boolean
  , where :: 
    { 
    }
    -> (Maybe JsonObject)
  }
derive instance newtypePayloadPreferencesDeleteAccess :: Newtype PayloadPreferencesDeleteAccess _

newtype Mutation = Mutation
  { createCategory :: 
    { data :: (NotNull MutationCategoryInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Category)
  , updateCategory :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationCategoryUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Category)
  , deleteCategory :: 
    { id :: (NotNull String)
    }
    -> (Maybe Category)
  , createPost :: 
    { data :: (NotNull MutationPostInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Post)
  , updatePost :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationPostUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Post)
  , deletePost :: 
    { id :: (NotNull String)
    }
    -> (Maybe Post)
  , createTag :: 
    { data :: (NotNull MutationTagInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Tag)
  , updateTag :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationTagUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Tag)
  , deleteTag :: 
    { id :: (NotNull String)
    }
    -> (Maybe Tag)
  , createUser :: 
    { data :: (NotNull MutationUserInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe User)
  , updateUser :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationUserUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe User)
  , deleteUser :: 
    { id :: (NotNull String)
    }
    -> (Maybe User)
  , refreshTokenUser :: 
    { token :: String
    }
    -> (Maybe UsersRefreshedUser)
  , logoutUser :: 
    { 
    }
    -> (Maybe String)
  , unlockUser :: 
    { email :: (NotNull String)
    }
    -> Boolean
  , loginUser :: 
    { email :: String
    , password :: String
    }
    -> (Maybe UsersLoginResult)
  , forgotPasswordUser :: 
    { disableEmail :: Boolean
    , email :: (NotNull String)
    , expiration :: Int
    }
    -> Boolean
  , resetPasswordUser :: 
    { password :: String
    , token :: String
    }
    -> (Maybe UsersResetPassword)
  , verifyEmailUser :: 
    { token :: String
    }
    -> (Maybe Boolean)
  , createMedia :: 
    { data :: (NotNull MutationMediaInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Media)
  , updateMedia :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationMediaUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe Media)
  , deleteMedia :: 
    { id :: (NotNull String)
    }
    -> (Maybe Media)
  , createPayloadPreference :: 
    { data :: (NotNull MutationPayloadPreferenceInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe PayloadPreference)
  , updatePayloadPreference :: 
    { id :: (NotNull String)
    , autosave :: Boolean
    , data :: (NotNull MutationPayloadPreferenceUpdateInput)
    , draft :: Boolean
    , locale :: LocaleInputType
    }
    -> (Maybe PayloadPreference)
  , deletePayloadPreference :: 
    { id :: (NotNull String)
    }
    -> (Maybe PayloadPreference)
  }
derive instance newtypeMutation :: Newtype Mutation _

newtype MutationCategoryInput = MutationCategoryInput
  { name :: String
  }
derive instance newtypeMutationCategoryInput :: Newtype MutationCategoryInput _

newtype MutationCategoryUpdateInput = MutationCategoryUpdateInput
  { name :: String
  }
derive instance newtypeMutationCategoryUpdateInput :: Newtype MutationCategoryUpdateInput _

newtype MutationPostInput = MutationPostInput
  { title :: String
  , author :: (Array String)
  , translator :: (Array String)
  , publishedDate :: String
  , category :: String
  , tags :: (Array String)
  , content :: Json
  , status :: PostStatusMutationInput
  , updatedAt :: String
  , createdAt :: String
  }
derive instance newtypeMutationPostInput :: Newtype MutationPostInput _

newtype MutationPostUpdateInput = MutationPostUpdateInput
  { title :: String
  , author :: (Array String)
  , translator :: (Array String)
  , publishedDate :: String
  , category :: String
  , tags :: (Array String)
  , content :: Json
  , status :: PostUpdateStatusMutationInput
  , updatedAt :: String
  , createdAt :: String
  }
derive instance newtypeMutationPostUpdateInput :: Newtype MutationPostUpdateInput _

newtype MutationTagInput = MutationTagInput
  { name :: String
  }
derive instance newtypeMutationTagInput :: Newtype MutationTagInput _

newtype MutationTagUpdateInput = MutationTagUpdateInput
  { name :: String
  }
derive instance newtypeMutationTagUpdateInput :: Newtype MutationTagUpdateInput _

newtype MutationUserInput = MutationUserInput
  { name :: String
  , updatedAt :: String
  , createdAt :: String
  , email :: (NotNull String)
  , resetPasswordToken :: String
  , resetPasswordExpiration :: String
  , salt :: String
  , hash :: String
  , loginAttempts :: Number
  , lockUntil :: String
  , password :: (NotNull String)
  }
derive instance newtypeMutationUserInput :: Newtype MutationUserInput _

newtype MutationUserUpdateInput = MutationUserUpdateInput
  { name :: String
  , updatedAt :: String
  , createdAt :: String
  , email :: String
  , resetPasswordToken :: String
  , resetPasswordExpiration :: String
  , salt :: String
  , hash :: String
  , loginAttempts :: Number
  , lockUntil :: String
  , password :: String
  }
derive instance newtypeMutationUserUpdateInput :: Newtype MutationUserUpdateInput _

newtype UsersRefreshedUser = UsersRefreshedUser
  { exp :: 
    { 
    }
    -> (Maybe Int)
  , refreshedToken :: 
    { 
    }
    -> (Maybe String)
  , user :: 
    { 
    }
    -> (Maybe UsersJwt)
  }
derive instance newtypeUsersRefreshedUser :: Newtype UsersRefreshedUser _

newtype UsersJwt = UsersJwt
  { email :: 
    { 
    }
    -> EmailAddress
  , collection :: 
    { 
    }
    -> String
  }
derive instance newtypeUsersJwt :: Newtype UsersJwt _

newtype UsersLoginResult = UsersLoginResult
  { exp :: 
    { 
    }
    -> (Maybe Int)
  , token :: 
    { 
    }
    -> (Maybe String)
  , user :: 
    { 
    }
    -> (Maybe User)
  }
derive instance newtypeUsersLoginResult :: Newtype UsersLoginResult _

newtype UsersResetPassword = UsersResetPassword
  { token :: 
    { 
    }
    -> (Maybe String)
  , user :: 
    { 
    }
    -> (Maybe User)
  }
derive instance newtypeUsersResetPassword :: Newtype UsersResetPassword _

newtype MutationMediaInput = MutationMediaInput
  { updatedAt :: String
  , createdAt :: String
  , url :: String
  , filename :: String
  , mimeType :: String
  , filesize :: Number
  , width :: Number
  , height :: Number
  , sizes :: MutationMediaSizesInput
  }
derive instance newtypeMutationMediaInput :: Newtype MutationMediaInput _

newtype MutationMediaSizesInput = MutationMediaSizesInput
  { thumbnail :: MutationMediaSizesThumbnailInput
  , sixteenByNineMedium :: MutationMediaSizesSixteenByNineMediumInput
  }
derive instance newtypeMutationMediaSizesInput :: Newtype MutationMediaSizesInput _

newtype MutationMediaSizesThumbnailInput = MutationMediaSizesThumbnailInput
  { url :: String
  , width :: Number
  , height :: Number
  , mimeType :: String
  , filesize :: Number
  , filename :: String
  }
derive instance newtypeMutationMediaSizesThumbnailInput :: Newtype MutationMediaSizesThumbnailInput _

newtype MutationMediaSizesSixteenByNineMediumInput = MutationMediaSizesSixteenByNineMediumInput
  { url :: String
  , width :: Number
  , height :: Number
  , mimeType :: String
  , filesize :: Number
  , filename :: String
  }
derive instance newtypeMutationMediaSizesSixteenByNineMediumInput :: Newtype MutationMediaSizesSixteenByNineMediumInput _

newtype MutationMediaUpdateInput = MutationMediaUpdateInput
  { updatedAt :: String
  , createdAt :: String
  , url :: String
  , filename :: String
  , mimeType :: String
  , filesize :: Number
  , width :: Number
  , height :: Number
  , sizes :: MutationMediaUpdateSizesInput
  }
derive instance newtypeMutationMediaUpdateInput :: Newtype MutationMediaUpdateInput _

newtype MutationMediaUpdateSizesInput = MutationMediaUpdateSizesInput
  { thumbnail :: MutationMediaUpdateSizesThumbnailInput
  , sixteenByNineMedium :: MutationMediaUpdateSizesSixteenByNineMediumInput
  }
derive instance newtypeMutationMediaUpdateSizesInput :: Newtype MutationMediaUpdateSizesInput _

newtype MutationMediaUpdateSizesThumbnailInput = MutationMediaUpdateSizesThumbnailInput
  { url :: String
  , width :: Number
  , height :: Number
  , mimeType :: String
  , filesize :: Number
  , filename :: String
  }
derive instance newtypeMutationMediaUpdateSizesThumbnailInput :: Newtype MutationMediaUpdateSizesThumbnailInput _

newtype MutationMediaUpdateSizesSixteenByNineMediumInput = MutationMediaUpdateSizesSixteenByNineMediumInput
  { url :: String
  , width :: Number
  , height :: Number
  , mimeType :: String
  , filesize :: Number
  , filename :: String
  }
derive instance newtypeMutationMediaUpdateSizesSixteenByNineMediumInput :: Newtype MutationMediaUpdateSizesSixteenByNineMediumInput _

newtype MutationPayloadPreferenceInput = MutationPayloadPreferenceInput
  { user :: PayloadPreferenceUserRelationshipInput
  , key :: String
  , value :: Json
  , updatedAt :: String
  , createdAt :: String
  }
derive instance newtypeMutationPayloadPreferenceInput :: Newtype MutationPayloadPreferenceInput _

newtype PayloadPreferenceUserRelationshipInput = PayloadPreferenceUserRelationshipInput
  { relationTo :: PayloadPreferenceUserRelationshipInputRelationTo
  , value :: Json
  }
derive instance newtypePayloadPreferenceUserRelationshipInput :: Newtype PayloadPreferenceUserRelationshipInput _

newtype MutationPayloadPreferenceUpdateInput = MutationPayloadPreferenceUpdateInput
  { user :: PayloadPreferenceUpdateUserRelationshipInput
  , key :: String
  , value :: Json
  , updatedAt :: String
  , createdAt :: String
  }
derive instance newtypeMutationPayloadPreferenceUpdateInput :: Newtype MutationPayloadPreferenceUpdateInput _

newtype PayloadPreferenceUpdateUserRelationshipInput = PayloadPreferenceUpdateUserRelationshipInput
  { relationTo :: PayloadPreferenceUpdateUserRelationshipInputRelationTo
  , value :: Json
  }
derive instance newtypePayloadPreferenceUpdateUserRelationshipInput :: Newtype PayloadPreferenceUpdateUserRelationshipInput _
