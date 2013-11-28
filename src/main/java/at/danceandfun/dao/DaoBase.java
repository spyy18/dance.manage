package at.danceandfun.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;

public interface DaoBase<T> {

    public void save(T domain);

    public void update(T domain);

    public T get(Serializable id);

    public List<T> getEnabledListWithCriteria(DetachedCriteria detachedCriteria);

    public List<T> getListByCriteria(DetachedCriteria detachedCriteria);

    public List<T> getListByCriteria(DetachedCriteria detachedCriteria,
            int offset, int size);

    public List<T> getQueryResults(String query);

    public List<T> getListByCriterions(List<Criterion> criterions);

    public Class<T> getInjectedClass();

}
