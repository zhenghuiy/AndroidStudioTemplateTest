package ${packageName};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import name.huihui.androidstudiotemplatetest.ActivityUtils;
import name.huihui.androidstudiotemplatetest.R;

public class ${activityName} extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
        initContent();
    }

    private void initContent() {
        ${fragmentName} contentFragment = (${fragmentName}) getFragmentManager().findFragmentById(R.id.contentFrame);
        if (contentFragment == null) {
            contentFragment = ${fragmentName}.newInstance();
            ActivityUtils.addFragmentToActivity(getFragmentManager(), contentFragment, R.id.contentFrame);
        }
    }

}