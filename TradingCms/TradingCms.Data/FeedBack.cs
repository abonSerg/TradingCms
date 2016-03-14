using System;

namespace TradingCms.Data
{
    public class FeedBack : IEntity
    {
        public virtual int Id { get; set; }
        public virtual bool IsActive { get; set; }
        public virtual bool IsModerated { get; set; }
        public virtual DateTime CreateDate { get; set; }
        public virtual DateTime ModerateDate { get; set; }
        public virtual short Rate { get; set; }
        public virtual string Advantages { get; set; }
        public virtual string Disadvantages { get; set; }
        public virtual string Text { get; set; }

        public virtual string CreatorId { get; set; }

        public virtual int ReplyFeedBackId { get; set; }
        public virtual FeedBack ReplyFeedBack { get; set; }

        public virtual int ProductId { get; set; }
    }
}
