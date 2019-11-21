package cards.pay.sample.demo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;

import cards.pay.paycardsrecognizer.sdk.Card;
import cards.pay.paycardsrecognizer.sdk.ScanCardIntent;

public class IntroActivity extends AppCompatActivity {

    private Toolbar mToolbar;
    private static final int REQUEST_CODE_SCAN_CARD = 1;
    private static final String TAG = "CardDetailsActivity";

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_intro);

        mToolbar = findViewById(R.id.toolbar);
        setupToolbar();

        findViewById(R.id.button_next).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                goToCardDetails();
                scanCard();
            }
        });

    }

    private void setupToolbar() {
        setSupportActionBar(mToolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);

        mToolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                goToCardDetails();
            }
        });
    }

    private void goToCardDetails() {
        Intent intent = new Intent(this, CardDetailsActivity.class);
        startActivity(intent);
        finish();
    }

    private void scanCard() {
        Intent intent = new ScanCardIntent.Builder(this).build();
        startActivityForResult(intent, REQUEST_CODE_SCAN_CARD);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE_SCAN_CARD) {
            if (resultCode == Activity.RESULT_OK) {
                Card card = data.getParcelableExtra(ScanCardIntent.RESULT_PAYCARDS_CARD);
                if (BuildConfig.DEBUG) Log.i(TAG, "Card info: " + card);
//                setCard(card);
            } else if (resultCode == Activity.RESULT_CANCELED) {
                @ScanCardIntent.CancelReason final int reason;
                if (data != null) {
                    reason = data.getIntExtra(ScanCardIntent.RESULT_CANCEL_REASON, ScanCardIntent.BACK_PRESSED);
                } else {
                    reason = ScanCardIntent.BACK_PRESSED;
                }

                if (reason == ScanCardIntent.ADD_MANUALLY_PRESSED) {
//                    showIme(mCardNumberField.getEditText());
                }
            } else if (resultCode == ScanCardIntent.RESULT_CODE_ERROR) {
                Log.i(TAG, "Scan failed");
            }
        }
    }

}
