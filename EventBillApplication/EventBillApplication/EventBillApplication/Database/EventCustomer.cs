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
    
    public partial class EventCustomer
    {
        public long Id { get; set; }
        public Nullable<long> Evententryid { get; set; }
        public Nullable<int> Eventcustomerid { get; set; }
        public Nullable<decimal> Paidamount { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual UserMaster UserMaster { get; set; }
    }
}