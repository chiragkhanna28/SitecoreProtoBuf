using System;

namespace ReadProtoBuf.Models
{
    public class GridViewItemData
    {
        public Guid ItemId { get; set; }
        public string ItemName { get; set; }
        public Guid TemplateId { get; set; }
    }
}