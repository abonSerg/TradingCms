using NHibernate;
using NHibernate.Tool.hbm2ddl;

namespace TradingCms.Data.Access
{
    public class SessionManager
    {
        private readonly ISessionFactory _sessionFactory;
        private readonly SchemaExport _schemaExport;
        public ISession Session { get; private set; }

        public SessionManager(ISessionFactory sessionFactory) : this(sessionFactory, null)
        {
        }

        public SessionManager(ISessionFactory sessionFactory, SchemaExport schemaExport)
        {
            _sessionFactory = sessionFactory;
            _schemaExport = schemaExport;
            OpenSession();
        }

        public bool IsSessionOpened
        {
            get { return Session != null && Session.IsOpen; }
        }

        public void OpenSession()
        {
            if (!IsSessionOpened)
            {
                Session = _sessionFactory.OpenSession();
                Session.FlushMode = FlushMode.Auto;
                if (_schemaExport != null)
                {
                    _schemaExport.Execute(true, true, false, Session.Connection, null);
                }
            }
        }

        public void CloseSession()
        {
            if (IsSessionOpened)
            {
                Session.Close();
            }
            Session = null;
        }
    }
}
