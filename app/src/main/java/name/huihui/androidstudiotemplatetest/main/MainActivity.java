package name.huihui.androidstudiotemplatetest.main;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import name.huihui.androidstudiotemplatetest.ActivityUtils;
import name.huihui.androidstudiotemplatetest.R;
import name.huihui.androidstudiotemplatetest.main.MainContract;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initContent();
    }

    private void initContent() {
        MainFragment contentFragment = (MainFragment) getFragmentManager().findFragmentById(R.id.contentFrame);
        if (contentFragment == null) {
            contentFragment = MainFragment.newInstance();
            ActivityUtils.addFragmentToActivity(getFragmentManager(), contentFragment, R.id.contentFrame);
        }
    }

}
