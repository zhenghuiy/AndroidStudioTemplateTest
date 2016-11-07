package name.huihui.androidstudiotemplatetest.main;

import name.huihui.androidstudiotemplatetest.base.presenter.BasePresenter;
import name.huihui.androidstudiotemplatetest.base.view.BaseView;

/**
 * Created by yzh on 16/11/5.
 */
public interface MainContract {
    interface View extends BaseView<Presenter> {
        //do something
    }

    interface Presenter extends BasePresenter {
        //do something
    }
}
