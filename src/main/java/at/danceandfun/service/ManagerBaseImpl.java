package at.danceandfun.service;

import java.io.Serializable;
import java.util.List;

import at.danceandfun.dao.DaoBase;

public abstract class ManagerBaseImpl<T> implements ManagerBase<T> {

    private DaoBase<T> dao;

    public void setDao(DaoBase<T> dao) {
        this.dao = dao;
    }

    @Override
    public List<T> getList() {
        return dao.getList();
    }

    @Override
    public void save(T t) {
        dao.save(t);
    }

    @Override
    public void update(T t) {
        dao.update(t);
    }

    @Override
    public T get(Serializable id) {
        return dao.get(id);
    }

}
