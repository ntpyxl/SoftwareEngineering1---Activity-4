-- SQL Queries used for the respective questions

-- 1
SELECT * FROM Users
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

-- 2
SELECT * FROM Posts
WHERE PostedBy = '4'

-- 3
SELECT GroupName FROM Groups

-- 4
SELECT * FROM GroupMembershipRequests
WHERE GroupMemberUserID = '2'

-- 5
SELECT * FROM Users
JOIN Friends ON 
	Users.UserID = Friends.FriendBeingAdded OR Users.UserID = Friends.FriendWhoAdded
WHERE (FriendWhoAdded = 2 OR FriendBeingAdded = 2) AND Users.UserID is not 2
AND IsAccepted = true;

-- 6
SELECT * FROM Friends
WHERE FriendWhoAdded = 1;

-- 7
SELECT * FROM Posts
WHERE GroupID = 2;

-- 8
SELECT * FROM GroupMembershipRequests
WHERE GroupID = 2 AND isGroupMemberShipAccepted = 0;
