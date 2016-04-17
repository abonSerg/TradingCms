using Microsoft.AspNet.Identity;
using NHibernate;
using NHibernate.AspNet.Identity;
using TradingCms.Data;

namespace TradingCms
{
    public class ApplicationUserManager : UserManager<ApplicationUser>
    {
        public ApplicationUserManager(IUserStore<ApplicationUser> store)
            : base(store)
        {
        }

        public static ApplicationUserManager Create(ISession session)
        {
            var manager = new ApplicationUserManager(new UserStore<ApplicationUser>(session));
            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };
            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };
            return manager;
        }
    }
}