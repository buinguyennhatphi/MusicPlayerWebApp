//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebNgheNhac.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BaiHat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BaiHat()
        {
            this.MyPlayLists = new HashSet<MyPlayList>();
        }
    
        public int IdBaiHat { get; set; }
        public string TenBaiHat { get; set; }
        public string LinkBaiHat { get; set; }
        public string HinhBaiHat { get; set; }
        public Nullable<int> SoLanNghe { get; set; }
        public Nullable<int> IdCaSi { get; set; }
        public Nullable<int> IdTheLoai { get; set; }
        public Nullable<int> IdAlbum { get; set; }
    
        public virtual Album Album { get; set; }
        public virtual CaSi CaSi { get; set; }
        public virtual TheLoai TheLoai { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MyPlayList> MyPlayLists { get; set; }
    }
}
