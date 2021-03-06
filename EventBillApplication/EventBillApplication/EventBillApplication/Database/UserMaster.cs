//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EventBillApplication.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserMaster
    {
        public UserMaster()
        {
            this.EventCustomers = new HashSet<EventCustomer>();
            this.CreditAmountDetails = new HashSet<CreditAmountDetail>();
            this.CreditAmountDetails1 = new HashSet<CreditAmountDetail>();
        }
    
        public int Id { get; set; }
        public string Username { get; set; }
        public string password { get; set; }
        public string Fullname { get; set; }
        public Nullable<System.DateTime> Createddate { get; set; }
        public Nullable<int> Createdby { get; set; }
        public Nullable<System.DateTime> Updateddate { get; set; }
        public Nullable<int> Updatedby { get; set; }
        public Nullable<int> Usertypeid { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual UserTypeMaster UserTypeMaster { get; set; }
        public virtual ICollection<EventCustomer> EventCustomers { get; set; }
        public virtual ICollection<CreditAmountDetail> CreditAmountDetails { get; set; }
        public virtual ICollection<CreditAmountDetail> CreditAmountDetails1 { get; set; }
    }
}
