use SoftDeletes;

public function delete($slug) {
    $client = MyClient::where('slug', $slug)->firstOrFail();
    $client->delete();
    Redis::del($slug);
    return response()->json($client);
}