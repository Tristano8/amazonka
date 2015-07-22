{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.DeleteReplicationGroup
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- The /DeleteReplicationGroup/ action deletes an existing replication
-- group. By default, this action deletes the entire replication group,
-- including the primary cluster and all of the read replicas. You can
-- optionally delete only the read replicas, while retaining the primary
-- cluster.
--
-- When you receive a successful response from this action, Amazon
-- ElastiCache immediately begins deleting the selected resources; you
-- cannot cancel or revert this action.
--
-- <http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DeleteReplicationGroup.html>
module Network.AWS.ElastiCache.DeleteReplicationGroup
    (
    -- * Request
      DeleteReplicationGroup
    -- ** Request constructor
    , deleteReplicationGroup
    -- ** Request lenses
    , drgrqFinalSnapshotIdentifier
    , drgrqRetainPrimaryCluster
    , drgrqReplicationGroupId

    -- * Response
    , DeleteReplicationGroupResponse
    -- ** Response constructor
    , deleteReplicationGroupResponse
    -- ** Response lenses
    , delrsReplicationGroup
    , delrsStatus
    ) where

import           Network.AWS.ElastiCache.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a /DeleteReplicationGroup/ action.
--
-- /See:/ 'deleteReplicationGroup' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drgrqFinalSnapshotIdentifier'
--
-- * 'drgrqRetainPrimaryCluster'
--
-- * 'drgrqReplicationGroupId'
data DeleteReplicationGroup = DeleteReplicationGroup'
    { _drgrqFinalSnapshotIdentifier :: !(Maybe Text)
    , _drgrqRetainPrimaryCluster    :: !(Maybe Bool)
    , _drgrqReplicationGroupId      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteReplicationGroup' smart constructor.
deleteReplicationGroup :: Text -> DeleteReplicationGroup
deleteReplicationGroup pReplicationGroupId =
    DeleteReplicationGroup'
    { _drgrqFinalSnapshotIdentifier = Nothing
    , _drgrqRetainPrimaryCluster = Nothing
    , _drgrqReplicationGroupId = pReplicationGroupId
    }

-- | The name of a final node group snapshot. ElastiCache creates the
-- snapshot from the primary node in the cluster, rather than one of the
-- replicas; this is to ensure that it captures the freshest data. After
-- the final snapshot is taken, the cluster is immediately deleted.
drgrqFinalSnapshotIdentifier :: Lens' DeleteReplicationGroup (Maybe Text)
drgrqFinalSnapshotIdentifier = lens _drgrqFinalSnapshotIdentifier (\ s a -> s{_drgrqFinalSnapshotIdentifier = a});

-- | If set to /true/, all of the read replicas will be deleted, but the
-- primary node will be retained.
drgrqRetainPrimaryCluster :: Lens' DeleteReplicationGroup (Maybe Bool)
drgrqRetainPrimaryCluster = lens _drgrqRetainPrimaryCluster (\ s a -> s{_drgrqRetainPrimaryCluster = a});

-- | The identifier for the cluster to be deleted. This parameter is not case
-- sensitive.
drgrqReplicationGroupId :: Lens' DeleteReplicationGroup Text
drgrqReplicationGroupId = lens _drgrqReplicationGroupId (\ s a -> s{_drgrqReplicationGroupId = a});

instance AWSRequest DeleteReplicationGroup where
        type Sv DeleteReplicationGroup = ElastiCache
        type Rs DeleteReplicationGroup =
             DeleteReplicationGroupResponse
        request = post
        response
          = receiveXMLWrapper "DeleteReplicationGroupResult"
              (\ s h x ->
                 DeleteReplicationGroupResponse' <$>
                   (x .@? "ReplicationGroup") <*> (pure (fromEnum s)))

instance ToHeaders DeleteReplicationGroup where
        toHeaders = const mempty

instance ToPath DeleteReplicationGroup where
        toPath = const "/"

instance ToQuery DeleteReplicationGroup where
        toQuery DeleteReplicationGroup'{..}
          = mconcat
              ["Action" =:
                 ("DeleteReplicationGroup" :: ByteString),
               "Version" =: ("2015-02-02" :: ByteString),
               "FinalSnapshotIdentifier" =:
                 _drgrqFinalSnapshotIdentifier,
               "RetainPrimaryCluster" =: _drgrqRetainPrimaryCluster,
               "ReplicationGroupId" =: _drgrqReplicationGroupId]

-- | /See:/ 'deleteReplicationGroupResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'delrsReplicationGroup'
--
-- * 'delrsStatus'
data DeleteReplicationGroupResponse = DeleteReplicationGroupResponse'
    { _delrsReplicationGroup :: !(Maybe ReplicationGroup)
    , _delrsStatus           :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteReplicationGroupResponse' smart constructor.
deleteReplicationGroupResponse :: Int -> DeleteReplicationGroupResponse
deleteReplicationGroupResponse pStatus =
    DeleteReplicationGroupResponse'
    { _delrsReplicationGroup = Nothing
    , _delrsStatus = pStatus
    }

-- | FIXME: Undocumented member.
delrsReplicationGroup :: Lens' DeleteReplicationGroupResponse (Maybe ReplicationGroup)
delrsReplicationGroup = lens _delrsReplicationGroup (\ s a -> s{_delrsReplicationGroup = a});

-- | FIXME: Undocumented member.
delrsStatus :: Lens' DeleteReplicationGroupResponse Int
delrsStatus = lens _delrsStatus (\ s a -> s{_delrsStatus = a});
