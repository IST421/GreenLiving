﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace infoRetrieval
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        string GetData(int value);

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        [OperationContract]
        void userRegister(string username, string password, string firstname, string lastname, 
            string email, string city, string state, string country, string telephone);

        [OperationContract]
        int getprofileID(string username);

        [OperationContract]
        void  updateAchievements(int profileID, int achievement, string actualvalue);

        [OperationContract]
        void createuserAchievements(int profID, int acheivements, string achievemenetpoints);

        [OperationContract]
        void carbonInsert(string username, double score);

        [OperationContract]
        int loginUser(string username, string password);

        [OperationContract]
        userDeets sendBackdeets(string username);





        // TODO: Add your service operations here
    }

    [DataContract]
    public class userDeets
    {
        [DataMember]
        public string country { get; set; }

        [DataMember]
        public string city { get; set; }
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}