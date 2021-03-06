﻿using FluentNHibernate.Mapping;

namespace TradingCms.Data.Access
{
    public class FeedBackMap : ClassMap<FeedBack>
    {
        public FeedBackMap()
        {
            Id(x => x.Id);
            Map(x => x.IsActive).Not.Nullable();
            Map(x => x.IsModerated).Not.Nullable();
            Map(x => x.CreateDate).Not.Nullable();
            Map(x => x.ModerateDate).Nullable();
            Map(x => x.Rate).Nullable();
            Map(x => x.Advantages).Nullable();
            Map(x => x.Disadvantages).Nullable();
            Map(x => x.Text).Nullable();

            Map(x => x.CreatorName).Not.Nullable();

            Map(x => x.ReplyFeedBackId).Nullable();
            References(x => x.ReplyFeedBack, "ReplyFeedBackId").Nullable();

            Map(x => x.ProductId).Not.Nullable();

            Table("FeedBacks");
        }
    }
}
