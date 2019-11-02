<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionControllersTable extends Migration
{

    const TABLE_NAME = 'transaction_controllers';

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(static::TABLE_NAME, function (Blueprint $table) {
            $table->uuid('_id');

            $table->uuid('created_by');

            $table->string('book_title');
            $table->string('book_desc');
            $table->integer('total_item');
            $table->string('supplier');
            $table->date('transaction_date');

            $table->primary('_id');

            $table->timestamps();
            $table->softDeletes();

            $table->foreign('created_by')
                    ->references('user_id')
                    ->on('users')
                    ->onDelete('cascade')
                    ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists(static::TABLE_NAME);
    }
}
