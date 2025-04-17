public function update(Request $request, $slug) {
    $client = MyClient::where('slug', $slug)->firstOrFail();
    $client->update($request->all());
    Redis::del($slug);
    Redis::set($slug, json_encode($client));
    return response()->json($client);
}