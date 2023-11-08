using Sitecore.Data.DataProviders.ReadOnly.Protobuf;
using Sitecore.DependencyInjection;
using Microsoft.Extensions.DependencyInjection;
using Sitecore.IO;
using System;
using Sitecore.Data.DataProviders.ReadOnly.Protobuf.Data;
using System.Collections.Generic;
using ReadProtoBuf.Models;

namespace ReadProtoBuf
{
    public partial class ReadProtoBuf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] filePaths = new string[]{
                FileUtil.MapPath("/sitecore modules/items/master/CustomTemplates"),
            };
            Dictionary<Guid, string> dictionary = new Dictionary<Guid, string>();
            var service = ServiceLocator.ServiceProvider.GetService<IResourceLoader>();
            ItemsDataSet itemsDataSet = service.LoadFromFiles(filePaths, Constants.DatFileExtension, dictionary);

            if (itemsDataSet != null)
            {
                List<GridViewItemData> gridViewItemData = new List<GridViewItemData>();
                foreach (var item in itemsDataSet.Definitions)
                {
                    var itemRecord = item.Value;
                    var itemData = new GridViewItemData()
                    {
                        ItemId = itemRecord.ID,
                        ItemName = itemRecord.Name,
                        TemplateId = itemRecord.TemplateID
                    };
                    gridViewItemData.Add(itemData);

                }
                this.ProtoBufData.DataSource = gridViewItemData;
                this.ProtoBufData.DataBind();
            }

        }
    }
}