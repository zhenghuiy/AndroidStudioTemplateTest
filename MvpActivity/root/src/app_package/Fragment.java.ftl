package ${packageName};

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import name.huihui.androidstudiotemplatetest.R;


public class ${fragmentName} extends Fragment implements ${contractName}.View {
    private ${contractName}.Presenter mPresenter;

    public static ${fragmentName} newInstance() {
        ${fragmentName} fragment = new ${fragmentName}();
        return fragment;
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.start();
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${contentLayoutName}, container, false);
        setHasOptionsMenu(true);

        return root;
    }

    @Override
    public void setPresenter(@NonNull ${contractName}.Presenter presenter) {
        mPresenter = presenter;
    }

}
